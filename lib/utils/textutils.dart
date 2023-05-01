import 'package:flutter/material.dart';
class SmallGreyText extends StatelessWidget {
  String title;
  SmallGreyText(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(title,style:const  TextStyle(color: Color(0xffc6c6c6)),),
    );
  }
}
class SmallGreyText2 extends StatelessWidget {
  String title;
  SmallGreyText2(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text(title,style:const  TextStyle(color: Color(0xffc6c6c6)),),
    );

  }
}

class TextblackWidget extends StatelessWidget {
  String title;

  TextblackWidget(this.title);

  @override
  Widget build(BuildContext context) {
    return
      Text(title,style:  const TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 15),);

  }
}
