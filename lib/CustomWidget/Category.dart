import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      width: 250,
      height: 370,

      child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width:200 ,
              height:200 ,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/photos/phillip-goldsberry-fZuleEfeA1Q-unsplash.jpg"),
                  fit: BoxFit.cover, // Adjust this as needed
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 13),
              child: Text(
                "Item Name",
                style: TextStyle(
                    color: Color(0xFF27283A),
                    fontSize: 20,
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
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
// width: 50,
// height: ,
                  margin: EdgeInsets.only(left: 15),
                  child: Text(
                    "\$250.00",
                    style: TextStyle(
                        color: Color(0xFF939498),
                        fontSize: 23,
                        fontWeight: FontWeight.w200
                    ),
                  ),
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outlined,size: 35,)),
              ],
            )
          ]),
    );
  }
}
