import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import './screens.dart/homescreen.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Plant Shop',
      theme: ThemeData(
        fontFamily:'UbuntuCondensed' ,
      ),
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        backgroundColor: HexColor('#ffffff'),
        body: HomePage(),)
    );
  }
}


