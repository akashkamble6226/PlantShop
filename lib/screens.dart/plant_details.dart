import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plantshop/widgets/plantInfo.dart';

class PlantDetails extends StatefulWidget {
  @override
  _PlantDetailsState createState() => _PlantDetailsState();
}

class _PlantDetailsState extends State<PlantDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      //backgroundColor: HexColor('#4D6B50'),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SingleChildScrollView(
                      child: Container(
              height: height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: HexColor('#1B7B4C'),
              ),
              child: CustomPaint(
                painter: CurvePainter(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {

                              Navigator.of(context).pop();

                            },
                            child: Icon(
                              MdiIcons.arrowLeft,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                          Icon(
                            MdiIcons.cartOutline,
                            color: Colors.black,
                            size: 30,
                          ),
                        ],
                      ),
                    ),

                    // SizedBox(height: 20,),
                    //
                    Image.asset('assets/snakplant.png',
                        width: 400, height: height * 0.40),

                    plantInfo(
                        'Snake Plant',
                        'Recommended for begineers, this pant can survive in a low light environment and drought.',
                        '24.79',
                        true,
                        context),

                    SizedBox(
                      height: 70,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        info('Temprature', MdiIcons.thermometer,  '10 - 32' + ' \u2103'),
                        info('Height', Icons.height,  '35-36 cm '),
                        info('Light', MdiIcons.whiteBalanceSunny,  'Bright Sun'),
                        
                      ],
                    ),

                   

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget info(String name, IconData icon, String detail) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: HexColor('#ffffff'),
        ),
        SizedBox(height: 10,),
        Text(
          name,
          style: TextStyle(
            color: HexColor('#ffffff'),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          detail,
          style: TextStyle(
            color: HexColor('#ffffff'),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = HexColor('#ffffff');
    paint.style = PaintingStyle.fill; // Change this to fill

    var path = Path();

    //starting point in the screen can be prepared by moveto
    path.moveTo(0, size.height * 0.70);

    //x means horizontal and y means vertical
    var firstControllPoint = Offset(size.width / 2, size.height - 80);

    path.quadraticBezierTo(firstControllPoint.dx, firstControllPoint.dy,
        size.height * 0.80, size.height * 0.80);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
