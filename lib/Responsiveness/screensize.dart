import 'package:flutter/material.dart';
const  int largescreensize=1366;
const int mediumscreensize=768;
const int smallscreensize=360;

class Responsivenes extends StatelessWidget {
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  Responsivenes({required this.largeScreen,required this.mediumScreen,required this.smallScreen,});



  static bool isSmallScreen(BuildContext context )=>MediaQuery.of(context).size.width<mediumscreensize;
  static bool isMediumScreen(BuildContext context)=>MediaQuery.of(context).size.width>=mediumscreensize &&   MediaQuery.of(context).size.width<largescreensize;
  static bool isLargeScreen(BuildContext context)=>MediaQuery.of(context).size.width>=largescreensize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      double _width=constraints.maxWidth;
      if(_width>=largescreensize){
        return largeScreen;
      }else if(_width<largescreensize &&_width>=mediumscreensize){
        return mediumScreen ?? largeScreen;
      }else{
        return smallScreen ??largeScreen;
      }

    });
  }
}


