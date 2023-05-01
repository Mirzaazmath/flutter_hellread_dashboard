import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class ChartsComponent extends StatelessWidget {
  const ChartsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Mon', 12, 10, 14 ),
      ChartData('Tue', 14, 11, 18),
      ChartData('Wed', 16, 10, 15),
      ChartData('Thu', 18, 16, 18),
      ChartData('Fri', 28, 12, 5),
      ChartData('Sat', 19, 16, 18),
      ChartData('Sun', 18, 46, 10)
    ];
    return SizedBox(
      child:
      SfCartesianChart(
        primaryYAxis: NumericAxis(
          majorGridLines:const  MajorGridLines(width: 0),
          //Hide the axis line of x-axis
          axisLine: const AxisLine(width: 0),


        ),
          primaryXAxis: CategoryAxis(
              majorGridLines:const  MajorGridLines(width: 0),
              //Hide the axis line of y-axis
              axisLine: const AxisLine(width: 0)


          ),


          series: <ChartSeries>[
            StackedColumnSeries<ChartData, String>(
              width: 0.1,

              color: const Color(0xff7f73bd),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y1
            ),
            StackedColumnSeries<ChartData, String>(
                width: 0.1,
              color:const  Color(0xff70bb98),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y2

            ),
            StackedColumnSeries<ChartData,String>(
                width: 0.1,

                color:const  Color(0xffe7c188),

                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y3
            ),

          ]
      )

    );
  }
}
class ChartData{
  ChartData(this.x, this.y1, this.y2, this.y3,);
  final String x;
  final num y1;
  final num y2;
  final num y3;

}