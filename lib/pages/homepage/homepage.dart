import 'package:flutter/material.dart';

import '../../Responsiveness/screensize.dart';
import '../LargeScreen/largeScreen.dart';
import '../MediumScreen/mediumscreen.dart';
import '../SmallScreen/smallscreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Responsivenes(largeScreen: const LargeScreen(), mediumScreen: const MediumScreen(),smallScreen: const SmallScreen(),),
    );
  }
}
