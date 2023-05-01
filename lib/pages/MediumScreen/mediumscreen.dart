import 'package:flutter/material.dart';
import 'package:hellread_dashboard/components/appbarcomponent.dart';
import 'package:hellread_dashboard/components/sidebar.dart';


import '../../components/subbodycomponent.dart';
class MediumScreen extends StatelessWidget {
  const MediumScreen({Key? key}) : super(key: key);

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
