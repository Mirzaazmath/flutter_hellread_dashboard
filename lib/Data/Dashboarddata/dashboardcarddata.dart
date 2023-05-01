import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hellread_dashboard/Constant/constantstrings.dart';

class CardItem{
 final  String title;
 final  String count;
 final  String persent;
 final IconData icon;
 CardItem({required this.title,required this.count,required this.icon,required this.persent});

}
List<CardItem>cardlist=[
  CardItem(title: AppStrings().totalemployee,count: "240",icon: Icons.trending_up,persent: "+10%"),
 CardItem(title: AppStrings().noofleaves,count: "20",icon: Icons.trending_down,persent: "-14%"),
 CardItem(title: AppStrings().newemployee,count: "28",icon: Icons.trending_up,persent: "+10%"),
 CardItem(title: AppStrings().happiness,count: "60%",icon: Icons.trending_down,persent: "-19%")

];