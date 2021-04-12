import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:plantshop/widgets/single_plant.dart';
import 'package:plantshop/widgets/top_part.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> backColor = [
    true,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    List<String> _filterText = [
      'Top Picks',
      'Indoore',
      'Outdoore',
      'Sale',
    ];

    return Scaffold(
      backgroundColor: HexColor('#ffffff'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TopPart(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (var i = 0; i < _filterText.length; i++)
                        _buidFilterCircle(i, backColor),
                    ],
                  ),
                  SinglePlant(
                    title: 'Rubber plant',
                    details:
                        'Easy to care.            Grows well in any environment.',
                    price: '24.79',
                    leftOrRightImgPath: 'assets/right.png',
                    isLeft: true,
                  ),
                  SinglePlant(
                    title: 'Haworthia',
                    details:
                        'Perfect for beginners. Grows best in lignt environment ',
                    price: '22.79',
                    leftOrRightImgPath: 'assets/left.png',
                    isLeft: false,
                  ),

                  SinglePlant(
                  
                    title:  'Snake Plant',
                    details:'Recommended for begineers, this pant can survive in a low light environment and drought.',
                    price: '24.79',
                    leftOrRightImgPath: 'assets/right.png',
                    isLeft: true,
                  ),
                ],
              ),
              for (var i = 0; i < _filterText.length; i++)
                _buildFilterText(_filterText, i, backColor),
              plantImage(
                  25.0 + 30.0 + 25.0 + 200.0 + 48.0, 'assets/s2.png', true),
              plantImage(
                  25.0 + 30.0 + 25.0 + 200.0 + 350.0, 'assets/s1.png', false),

                  plantImage(
                  25.0 + 30.0 + 25.0 + 200.0 + 620.0, 'assets/snakesmall.png', true),
            ],
          ),
        ),
      ),
    );
  }

  Widget plantImage(double fromTop, String img, bool fromLeft) {
    return Positioned(
      top: fromTop,
      //right: fromLeft ?MediaQuery.of(context).size.width / 100 :  ,
      //left:fromLeft ? MediaQuery.of(context).size.width / 2.5: MediaQuery.of(context).size.width / 50 ,
      //
      left: fromLeft
          ? MediaQuery.of(context).size.width / 2.5
          : MediaQuery.of(context).size.width / 50,
      child: Container(
        child: Image.asset(
          img,
          height: 220,
          width: 230,
          fit: BoxFit.fill,
          // height: 250,
        ),
      ),
    );
  }

  _buidFilterCircle(int ind, List backColor) {
    return CircleAvatar(
      radius: 26,
      backgroundColor:
          backColor[ind] ? HexColor('#d3d3d3') : HexColor('#ffffff'),
    );
  }

  changeBackCirclePosition(int ind, List backColor) {
    List lstIndex = [0, 1, 2, 3];

    for (var a = 0; a < lstIndex.length; a++) {
      if (ind == a) {
        setState(() {
          backColor[ind] = true;
        });
      } else {
        setState(() {
          backColor[a] = false;
        });
      }
    }
  }

  _buildFilterText(List filterdList, int ind, List backColor) {
    double left = 0;
    double width = MediaQuery.of(context).size.width;
    if (ind == 0) {
      left = width / 25;
    } else if (ind == 1) {
      left = width / 3.5;
    } else if (ind == 2) {
      left = width / 1.9;
    } else if (ind == 3) {
      left = width / 1.2;
    }

    return Positioned(
      top: 25.0 + 30.0 + 35.0 + 5.0 + 35.0 + 25.0 + 5.0 + 70.0,
      left: left,
      child: Center(
        child: GestureDetector(
          onTap: () {
            print(ind);
            changeBackCirclePosition(ind, backColor);
          },
          child: Text(
            filterdList[ind],
            style: TextStyle(
              color: backColor[ind] ? HexColor('#000000') : HexColor('#A3A3A3'),
              fontSize: 23,
              //fontWeight:backColor[ind] ? FontWeight.bold : FontWeight.normal,
              fontFamily: 'UbuntuCondensed',
            ),
          ),
        ),
      ),
    );
  }
}
