import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ieee_first_task/CustomWidget/Category.dart';
import 'package:ieee_first_task/screen/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFF1F2F6),
            child: Column(children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_outlined,
                        color: Color(0xFF27283A),
                      )),
                  Container(
                      // alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF27283A),
                      ),
                      height: 36,
                      width: 40,
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person, color: Colors.white)),
                      )),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              EditSearchBar(),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.topLeft,
                child: Text(
                  "Explore",
                  style: TextStyle(
                      color: Color(0xFF27283A),
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 371,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Category();
                  },
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    color: Color(0xFF27283A),
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),

                height:200 ,
                width:330 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    height: 150,
                    width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/photos/jean-philippe-delberghe-feijc-nqWKM-unsplash.jpg"),
                        fit:BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    )
                  ),
                 Column(
                   children: [
                     Container(
                       alignment: Alignment.topLeft,
                       margin: EdgeInsets.only(left: 13,top: 25),
                       child: Text(
                         "Item Name",
                         style: TextStyle(
                             color: Color(0xFF27283A),
                             fontSize: 18,
                             fontWeight: FontWeight.w700
                         ),),
                     ),
                     SizedBox(height: 5),
                     Container(
                       alignment: Alignment.topLeft,
                       margin: EdgeInsets.only(left: 13),
                       child: Text(
                         "Description",
                         style: TextStyle(
                             color: Color(0xFFE7E5EC),
                             fontSize: 13,
                             fontWeight: FontWeight.w700
                         ),),
                     ),
                    SizedBox(height: 30,),
                     Container(
                       alignment: Alignment.topLeft,
                       margin: EdgeInsets.only(left: 13),
                       child: Text(
                         "\$125.00",
                         style: TextStyle(
                             color: Color(0xFF27283A),
                             fontSize: 13,
                             fontWeight: FontWeight.w700
                         ),),
                     ),
                    SizedBox(height: 12,),
                     Container(
                       margin: EdgeInsets.only(left: 100),
                         child: IconButton(
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder:(context){
                                 return Product();
                               } ));
                             },
                             icon: Icon(Icons.arrow_circle_right,size: 35,))),

                   ],
                 )



                ],
              ),
              )

            ]),
          ),
        ),
      ),
    );
  }
}

class EditSearchBar extends StatelessWidget {
  const EditSearchBar({Key? key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white, // Set the background color to white
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: IconButton(
                    icon: Icon(Icons.search, color: Color(0xFF27283A)),
                    onPressed: () {}),
                hintText: 'Search',
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: Color(0xFF27283A),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
