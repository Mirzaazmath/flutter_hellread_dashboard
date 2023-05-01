import 'package:flutter/material.dart';
import 'package:hellread_dashboard/Responsiveness/screensize.dart';
import 'package:hellread_dashboard/components/subbodycomponent.dart';
import 'appbarcomponent.dart';
class BodyComponent extends StatelessWidget {
  const BodyComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Responsivenes.isMediumScreen(context));
    return const Scaffold(
      appBar:AppBarWidget(),
      body:SubBody(),
    );
  }
}
