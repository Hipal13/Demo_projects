import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Linechart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter Chart Example'),
          backgroundColor: Colors.green
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LineCharts(),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "Traffic Source Chart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}

class LineCharts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cutOffYValue = 0.0;
    const yearTextStyle =
    TextStyle(fontSize: 12, color: Colors.black);

    return SizedBox(
      width: 360,
      height: 250,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(enabled: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 1),
                FlSpot(2, 3),
                FlSpot(3, 4),
                FlSpot(3, 5),
                FlSpot(4, 4)
              ],
              isCurved: true,
              barWidth: 2,
              color:
                Colors.black,
              belowBarData: BarAreaData(
                show: true,
                color: Colors.lightBlue.withOpacity(0.5),
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
              aboveBarData: BarAreaData(
                show: true,
                color: Colors.lightGreen.withOpacity(0.5),
                cutOffY: cutOffYValue,
                applyCutOffY: true,
              ),
             
            ),
          ],
          minY: 0,
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles:SideTitles(
                reservedSize: 5,
        ),
      ),
      )
    )
      )
    );
  }
}