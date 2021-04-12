import 'package:flutter/material.dart';
import 'package:demoji/demoji.dart';
import 'package:hexcolor/hexcolor.dart';

Widget maintain(String title, String emoji, double width) {
  // List emojis = [

  //   'Demoji.relieved',
  //   'Demoji.relieved',
  //   'Demoji.relieved',

  // ];
  return Padding(
    padding: const EdgeInsets.only(top: 5, left: 5),
    child: Container(
      width: width * 0.25,
      height: 50,
      decoration: BoxDecoration(
        color: HexColor('#4D6B50'),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              emoji.toString(),
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: HexColor('#ffffff')),
            ),
          ],
        ),
      ),
    ),
  );
}
