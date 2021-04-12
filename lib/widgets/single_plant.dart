import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:plantshop/screens.dart/plant_details.dart';
import 'package:plantshop/widgets/plantInfo.dart';

class SinglePlant extends StatelessWidget {
  final String title;
  final String details;
  final String price;
  final String leftOrRightImgPath;
  final bool isLeft;

  SinglePlant({
    this.details,
    this.title,
    this.leftOrRightImgPath,
    this.price,
    this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    return isLeft
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              plantInfo(title, details, price, false, context),
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    child: Image.asset(
                      leftOrRightImgPath,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                    child: Image.asset(
                      leftOrRightImgPath,
                      width: 180,
                      height: 180,
                    ),
                  ),
                ],
              ),
              plantInfo(title, details, price, false, context),
            ],
          );
  }
}
