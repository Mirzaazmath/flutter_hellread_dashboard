import 'package:flutter/material.dart';
import 'package:hellread_dashboard/Constant/constantstrings.dart';

import '../Data/sidebardata.dart';
import '../utils/textutils.dart';
class SideBarWidget extends StatelessWidget {
   SideBarWidget({Key? key}) : super(key: key);
  AppStrings appStrings=AppStrings();

  @override
  Widget build(BuildContext context) {

    return Container(
      height: MediaQuery.of(context).size.height,
      padding:const  EdgeInsets.all(16),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:const  [
                Icon(Icons.pie_chart,color: Colors.indigo,size: 40,),
                SizedBox(width: 20,),
                Text("Hellread",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 22),)
              ],
            ),
           const  SizedBox(height: 50,),
            SmallGreyText(appStrings.mainmenu),

            ListView.builder(
              shrinkWrap: true,
                itemCount: sidebarlist.length,
                itemBuilder: (context,index){
                // here we are checking the index to add title of the section
             if(index >5){
               // here we are checking the  particular index to add title of the section
               if(index>5&&index<7){
                 return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    const  SizedBox(height: 30,),
                     SmallGreyText(appStrings.recriutment),
                     SideMenuItem(index),
                   ],
                 );
               }
               // here we are checking the index to add another  title of the section
               else if(index >8){
                 // here we are checking the particular index to add title of the section
                 if(index>8&&index<10){
                   return Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const  SizedBox(height: 30,),
                       SmallGreyText(appStrings.other),
                       SideMenuItem(index),

                     ],
                   );

                 }
                // Returns the rest
                 return  SideMenuItem(index);

               }
               // Returns the rest
               return
                 SideMenuItem(index);
             }
             // Returns the rest
              return   SideMenuItem(index);
            })


          ],
        ),
      ),
    );

  }
}
class  SideMenuItem extends StatelessWidget {
  int index;
  SideMenuItem(this.index);


  @override
  Widget build(BuildContext context) {
   int selectedindex=0;

    return  Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
          color:selectedindex ==index?const  Color(0xfff3f2f8):Colors.transparent,
          borderRadius: BorderRadius.circular(10)
      ),

      child:  ListTile(

        leading: Icon(sidebarlist[index].icon,color:selectedindex ==index?Colors.black:const  Color(0xffc6c6c6),),title: Text(sidebarlist[index].title,style: TextStyle(fontSize:19,fontWeight: FontWeight.w500,color:selectedindex ==index?Colors.black:const Color(0xffc6c6c6)),),),
    );
  }
}
