import 'package:flutter/material.dart';
import 'package:only_submit//screen/Home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Product extends StatefulWidget {
  const Product({Key? key});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  String? selectedColor = '';

  void handleColorChange(String? value) {
    setState(() {
      selectedColor = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFFF1F2F6),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 400.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      onPageChanged: (index, reason) {
                        // Handle page change
                      },
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            height: 400,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
                              image: DecorationImage(
                                image: AssetImage("assets/photos/pexels-max-rahubovskiy-6580227.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                                      return HomeScreen();
                                    }));
                                  },
                                  icon: Icon(Icons.arrow_back),
                                ),
                                Text(
                                  "Product",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF27283A),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFF27283A)),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: DotsIndicator(
                      dotsCount: 5,
                      position: 0, // Current page position
                      decorator: DotsDecorator(
                        color: Colors.black, // Inactive dot color
                        activeColor: Colors.red, // Active dot color
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Text(
                  "\$115.00",
                  style: TextStyle(
                    color: Color(0xFFFA6868),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 18),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
                child: Text(
                  "Minimal chair",
                  style: TextStyle(
                    color: Color(0xFF27283A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Column(
                children: [
                  RadioListTile<String>(
                    value: 'Red',
                    groupValue: selectedColor,
                    onChanged: handleColorChange,
                    title: Text('Red'),
                  ),
                  RadioListTile<String>(
                    value: 'Blue',
                    groupValue: selectedColor,
                    onChanged: handleColorChange,
                    title: Text('Blue'),
                  ),
                  RadioListTile<String>(
                    value: 'Green',
                    groupValue: selectedColor,
                    onChanged: handleColorChange,
                    title: Text('Green'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (selectedColor != null && selectedColor!.isNotEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Success'),
                          content: Text('You bought $selectedColor color!'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('Please select a color to buy.'),
                          actions: <Widget>[
                            TextButton(
                              child: Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('Buy Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
