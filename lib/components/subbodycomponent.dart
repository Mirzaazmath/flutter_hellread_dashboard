import 'package:flutter/material.dart';

import '../Constant/constantstrings.dart';
import '../Data/Dashboarddata/dashboardcarddata.dart';
import '../Data/Dashboarddata/employeedata.dart';
import '../utils/textutils.dart';
import 'package:collection/collection.dart';
import 'chart.dart';
class SubBody extends StatelessWidget {
  const SubBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    num _width=MediaQuery.of(context).size.width;
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(
              height:_width<860?_width<860?500: 350: 500,
              child: Row(
                children: [
                  Expanded(child: SizedBox(
                    child: GridView.count(
                      physics:const  NeverScrollableScrollPhysics(),
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio:_width<=555?1: 1.5,
                      crossAxisCount:_width<=1160?_width<860?2:3:2,
                      children: cardlist.mapIndexed((index,e) => Container(
                        padding:const EdgeInsets.all(20),

                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow:  [
                              BoxShadow(
                                  color:const Color(0xffeff0f2).withOpacity(0.4),
                                  offset:const Offset(10,10),
                                  blurRadius: 30
                              ),
                              BoxShadow(
                                  color:const Color(0xffeff0f2).withOpacity(0.4),
                                  offset:const Offset(-10,-10),
                                  blurRadius: 30
                              )
                            ]

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(height: 50,width: 50,

                                  decoration: BoxDecoration(
                                      color:const Color(0xfff0edfd),
                                      borderRadius: BorderRadius.circular(10)

                                  ),
                                  child:const Icon(Icons.arrow_circle_up,color: Colors.indigo,),
                                ),
                                Row(
                                  children: [
                                    Icon(e.icon,color:index==1||index==3?Colors.red: Colors.green),
                                    const  SizedBox(width: 10,),
                                    Text(e.persent,style:  TextStyle(color:index==1||index==3?Colors.red: Colors.green,fontSize: 18),)
                                  ],
                                )
                              ],
                            ),
                            Text(e.count,style: const TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w900),),
                            Text(e.title,style: const TextStyle(color: Colors.grey,fontSize: 20,),)
                          ],
                        ),
                      )).toList(),



                    ),

                  )),
                  _width<=1160?Container():
                  Expanded(child: Container(
                    margin:const  EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    padding:const EdgeInsets.all(20),
                    width: double.infinity,

                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  [
                          BoxShadow(
                              color: const Color(0xffeff0f2).withOpacity(0.4),
                              offset: const Offset(10,10),
                              blurRadius: 30
                          ),
                          BoxShadow(
                              color:const Color(0xffeff0f2).withOpacity(0.4),
                              offset:const Offset(-10,-10),
                              blurRadius: 30
                          )
                        ]

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(AppStrings().projecttracked,style:const  TextStyle(fontSize: 28,fontWeight: FontWeight.w900,),),
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.grey.shade300),
                              ),
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text("Week 1"),
                                  SizedBox(width: 5,),
                                  Icon(Icons.expand_more)
                                ],
                              ),

                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const  Text("Febuary Total 157",style: TextStyle(color: Colors.grey),),
                        const SizedBox(height: 20,),
                        const  ChartsComponent()
                      ],
                    ),
                  ),
                  ),

                ],
              ),

            ),
            const   SizedBox(height: 30,),
            _width<=1160?   Container(
              margin:const  EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              padding:const EdgeInsets.all(20),
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                    BoxShadow(
                        color: const Color(0xffeff0f2).withOpacity(0.4),
                        offset: const Offset(10,10),
                        blurRadius: 30
                    ),
                    BoxShadow(
                        color:const Color(0xffeff0f2).withOpacity(0.4),
                        offset:const Offset(-10,-10),
                        blurRadius: 30
                    )
                  ]

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppStrings().projecttracked,style:const  TextStyle(fontSize: 28,fontWeight: FontWeight.w900,),),
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Week 1"),
                            SizedBox(width: 5,),
                            Icon(Icons.expand_more)
                          ],
                        ),

                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const  Text("Febuary Total 157",style: TextStyle(color: Colors.grey),),
                  const SizedBox(height: 20,),
                  const  ChartsComponent()
                ],
              ),
            ):Container(),
            const SizedBox(height: 30,),
            Container(
              padding:const EdgeInsets.all(20),
              width: double.infinity,

              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:  [
                    BoxShadow(
                        color: const Color(0xffeff0f2).withOpacity(0.4),
                        offset: const Offset(10,10),
                        blurRadius: 30
                    ),
                    BoxShadow(
                        color:const Color(0xffeff0f2).withOpacity(0.4),
                        offset:const Offset(-10,-10),
                        blurRadius: 30
                    ),
                  ]

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings().employesummary,style:const  TextStyle(fontSize: 28,fontWeight: FontWeight.w900,),),
                  const  SizedBox(height: 20,),
                  Row(
                    children: [

                      Expanded(
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child:MediaQuery.of(context).size.width<=1070?
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child:employeetable()

                          ):employeetable(),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

            ),
          ],
        ),
      ),
    );
  }
  Widget employeetable(){
    return  DataTable(
      headingTextStyle:const  TextStyle(color: Colors.grey,fontSize: 14),

      columns:  <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().emplname,

            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().email,

            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().gross,

            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().taxes,

            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().netsalary,

            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              AppStrings().status,

            ),
          ),
        ),

      ],
      rows:emoployeelist.map((element) =>  DataRow(
        cells: <DataCell>[
          DataCell(
              ListTile(
                leading:const CircleAvatar(
                  backgroundColor: Color(0xfff0eefb),


                  child:   Icon(Icons.person),

                ),
                title: TextblackWidget(element.name),
                subtitle: SmallGreyText2(element.post),
              )
          ),
          DataCell(TextblackWidget(element.email)),
          DataCell(TextblackWidget(element.gross)),
          DataCell(TextblackWidget(element.taxes)),
          DataCell(TextblackWidget(element.netsalary)),
          DataCell(Container(
            height: 30,
            alignment: Alignment.center,
            width: 80,
            decoration: BoxDecoration(
                color:  element.status=="Paid"? const  Color(0xffc9e7d9):const Color(0xfff5ebd4),
                borderRadius: BorderRadius.circular(20)

            ),
            child:  Text(element.status,style:  TextStyle(color:element.status=="Paid"?Colors.green:Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 15),),)),

        ],
      ),).toList(),


    );
  }
}
