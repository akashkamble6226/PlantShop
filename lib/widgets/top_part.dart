import 'package:demoji/demoji.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:plantshop/widgets/maintainance.dart';
import 'package:plantshop/widgets/price_slider.dart';

class TopPart extends StatefulWidget {
  @override
  _TopPartState createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 25,
                    ),
                    onPressed: () {}),
              ],
            ),
            Column(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Find the perfect',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),

              //

              SizedBox(height: 5),

              Row(
                children: [
                  Text(
                    'plant for your home',
                    style: TextStyle(
                      fontFamily: 'UbuntuCondensed',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => bottomSheet(false),
                child: Image.asset(
                  'assets/filter.png',
                  width: 25,
                  height: 25,
                ),
              )),
        ),
        SizedBox(height: 2),
      ],
    );
    ;
  }

  void bottomSheet(bool isSuccess) {
    double width = MediaQuery.of(context).size.width;

    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: false,
        backgroundColor: HexColor('#F9E7E7'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),

        // clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * .60,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    width: 60,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(10),
                        right: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Text(
                    'Filter By',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Text(
                    'PRICE',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),

                // SizedBox(height:80),

                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.80,
                        child: PriceSlider()),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Text(
                    'MAINTAINANCE',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      maintain('Low', Demoji.relieved, width),
                      maintain('Medium', Demoji.neutral_face, width),
                      maintain('High', Demoji.sob, width),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}
