import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ieee_first_task/screen/Home.dart';
class BuildScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
  }
}
void main() {
runApp(BuildScreen());
}
