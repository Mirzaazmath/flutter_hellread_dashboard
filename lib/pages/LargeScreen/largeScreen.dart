import 'package:flutter/material.dart';

import '../../components/bodycomponet.dart';
import '../../components/sidebar.dart';
class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Container(
          width: 300,
        child: SideBarWidget(),
        ),
        Expanded(child: BodyComponent())
      ],

    );
  }
}
