
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hellread_dashboard/Constant/constantstrings.dart';

class SideBarItem{
  IconData icon;
  String title;
  SideBarItem({required this.icon,required this.title});

}
AppStrings appStrings=AppStrings();
List<SideBarItem>sidebarlist=[
  SideBarItem(icon: Icons.grid_view_outlined, title: appStrings.dashboard),
  SideBarItem(icon: Icons.group_outlined, title: appStrings.employee),
  SideBarItem(icon: Icons.calendar_today_outlined, title: appStrings.finance),
  SideBarItem(icon: Icons.description_outlined, title: appStrings.document),
  SideBarItem(icon: Icons.calendar_month_outlined, title: appStrings.calender),
  SideBarItem(icon: Icons.chat_bubble_outline, title: appStrings.messages),
  SideBarItem(icon: Icons.work_outline, title: appStrings.job),
  SideBarItem(icon: Icons.group_outlined, title: appStrings.candidate),
  SideBarItem(icon: Icons.desktop_windows_outlined, title: appStrings.careersite),
  SideBarItem(icon: Icons.settings_outlined, title: appStrings.setting),
  SideBarItem(icon: Icons.headphones_outlined, title: appStrings.support),
  
];