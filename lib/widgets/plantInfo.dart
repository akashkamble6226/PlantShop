import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:plantshop/screens.dart/plant_details.dart';
import 'package:demoji/demoji.dart';

Widget plantInfo(
    String title, String details, String price, bool isCenter, context) {
  //created object to call its function
  //  TopPart topPart = new TopPart();
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment:
          isCenter ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        isCenter
            ? Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text(
                  title,
                  style: TextStyle(
                    color: isCenter ? HexColor('#35531E') : HexColor('#000000'),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Text(
                title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
        SizedBox(height: 5),
        Container(
          width: isCenter ? 220 : 180,
          child: Text(details,
              style: TextStyle(fontSize: 20, color: HexColor('#A3A3A3'))),
        ),
        SizedBox(
          height: 10,
        ),
        isCenter
            ? Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Row(
                  mainAxisAlignment: isCenter
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
                  children: [
                    Text(
                      '\$ ' + price,
                      style: TextStyle(
                          fontSize: isCenter ? 30 : 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: isCenter ? 35 : 25,
                      width: isCenter ? 35 : 25,
                      child: RawMaterialButton(
                        onPressed: () {
                          isCenter
                              ? bottomSheet(context)
                              : Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (
                                      BuildContext context,
                                    ) {
                                      return PlantDetails();
                                    },
                                  ),
                                );
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.add,
                          size: isCenter ? 20 : 15,
                        ),
                        shape: CircleBorder(
                            side: BorderSide(color: HexColor('#000000'))),
                      ),
                    ),
                  ],
                ),
              )
            : Row(
                mainAxisAlignment: isCenter
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  Text(
                    '\$ ' + price,
                    style: TextStyle(
                        fontSize: isCenter ? 30 : 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: isCenter ? 35 : 25,
                    width: isCenter ? 35 : 25,
                    child: RawMaterialButton(
                      onPressed: () {
                        isCenter
                            ? bottomSheet(context)
                            : Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (
                                    BuildContext context,
                                  ) {
                                    return PlantDetails();
                                  },
                                ),
                              );
                      },
                      fillColor: Colors.white,
                      child: Icon(
                        Icons.add,
                        size: isCenter ? 20 : 15,
                      ),
                      shape: CircleBorder(
                          side: BorderSide(color: HexColor('#000000'))),
                    ),
                  ),
                ],
              ),
      ],
    ),
  );
}

void bottomSheet(context) {
  //double width = MediaQuery.of(context).size.width;

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
            height: MediaQuery.of(context).size.height * .55,
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
                        color: HexColor('#ffffff'),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 35,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  ),
                  Center(
                    child: Text(
                      Demoji.grinning,
                      style: TextStyle(fontSize: 80),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Success!',
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Item added to cart',
                      style: TextStyle(fontSize: 25, color: HexColor('#696969')),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      decoration: BoxDecoration(
                        color:HexColor('#696969'),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Go to Cart',style: TextStyle(color: Colors.white,fontSize: 25),),),
                    ),
                  ),

                  // Center(child: Text('Continue Shopping'),)

                  Center(
                    child: TextButton(

                         
                      onPressed: () {},
                      child: Text(
                        'Continue Shopping',
                        style: TextStyle(
                          fontSize: 25,
                          color: HexColor('#696969'),
                        ),
                      ),
                    ),
                  ),
                  
                ]));
      });
}
