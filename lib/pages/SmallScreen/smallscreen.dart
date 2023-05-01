import 'package:flutter/material.dart';

import '../../components/appbarcomponent.dart';
import '../../components/sidebar.dart';
import '../../components/subbodycomponent.dart';
class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  AppBarWidget(),
      drawer: Drawer(
          child: SideBarWidget()
      ),

      body: const SubBody() ,
    );
  }
}
