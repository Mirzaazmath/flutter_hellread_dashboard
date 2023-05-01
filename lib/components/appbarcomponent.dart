import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  const AppBarWidget({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {

    return PreferredSize(
      preferredSize:const  Size.fromHeight(70.0), // here the desired height
      child:



      AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,

        elevation: 0,


        title:

        Container(


          width: double.infinity,
          height: 60,
          color: Colors.white,
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10)

                  ),
                  alignment: Alignment.center,
                  height:40,
                  child: TextFormField(

                    decoration:  const InputDecoration(
                      hintText: "Search for employee/project",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color:Colors.grey,)
                    ),
                  ),


                ),
              ),

              Expanded(
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [


                      Stack(
                        children: const [
                            Icon(Icons.notifications_outlined,color: Colors.grey,),
                          Positioned(
                              top: 2,
                              right: 0,
                              child: CircleAvatar(radius: 5,backgroundColor: Colors.red,))
                        ],
                      ),

                      const  SizedBox(width: 30,),
                      const  Icon(Icons.forum_outlined,color: Colors.grey,),
                     MediaQuery.of(context).size.width<=680?
                     const Padding(
                       padding:EdgeInsets.only(left: 10),
                       child: Icon(Icons.more_vert),
                     ):Row(
                       children: [
                         const  SizedBox(width: 30,),
                         Row(
                           children: [
                             Stack(
                               children: const [
                                 CircleAvatar(
                                   backgroundColor: Color(0xfff0eefb),
                                   radius: 30,

                                   child:   Icon(Icons.person),

                                 ),
                                 Positioned(
                                     bottom: 2,
                                     right: 13,
                                     child: CircleAvatar(radius: 5,backgroundColor: Colors.green,))
                               ],
                             ),
                             const  SizedBox(width: 10,),
                             const   Text("Eliza Hart",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                             const SizedBox(width: 10,),
                             const   Icon(Icons.expand_more)
                           ],
                         ),
                       ],
                     )

                    ],
                  ),

                ),
              )
            ],
          ),
        ),

      ),);
  }
}