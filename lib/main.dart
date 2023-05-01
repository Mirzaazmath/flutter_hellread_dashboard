import 'package:flutter/material.dart';
import 'package:hellread_dashboard/pages/homepage/homepage.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfff8f7fc),

      ),
      home: HomePage(),
    );
  }
}
