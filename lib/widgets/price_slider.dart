import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class PriceSlider extends StatefulWidget {
  @override
  _PriceSliderState createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  // RangeValues values = RangeValues(1, 100);
  SfRangeValues values = SfRangeValues(5.0, 75.0);

  @override
  Widget build(BuildContext context) {
    return  SfRangeSliderTheme(
        data:SfRangeSliderThemeData(
          
        activeTrackColor: HexColor('#4D6B50'),
        inactiveTrackColor: Colors.red[100],
         activeTrackHeight: 5,
          inactiveTrackHeight: 15,
          thumbColor: HexColor('#ffffff'),

        thumbRadius:12.0 ,

        thumbStrokeWidth: 8,
        thumbStrokeColor:  HexColor('#000000'),
      

          

         tooltipTextStyle:TextStyle(
           fontSize: 25,
         ),

          
        ),

              child: SfRangeSlider(
          min: 5.0,
          max: 80.0,
          interval: 80,
          showTicks: true,
          //showLabels: true,
          enableTooltip: true,

            // tooltipShape: SfPaddleTooltipShape(),
          values: values,
          onChanged: (SfRangeValues newValues) {
            setState(() {
              values = newValues;
            });
          },
        ),
      
    );
  }
}

/*

//       RangeSlider(

          //         min: 0,
          //         max: 100,
          //         divisions: 25,
          //         values: values,
          //         labels: RangeLabels(

          //   '\$'+values.start.round().toString() ,
          //   '\$'+values.end.round().toString(),
          // ),
          //         onChanged: (value) {
          //           setState(() {
          //             values = value;
          //           });
          //         },
          //       ),
          // */
