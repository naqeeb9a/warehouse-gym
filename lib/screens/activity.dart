import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.034),
              vertical: dynamicHeight(context, 0.04)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              homeBar(context, activityCheck: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  workoutBox(context, "Calories", "1000", "Kcal",
                      Icons.local_fire_department_outlined, Colors.orange),
                  workoutBox(context, "Steps", "720", "Steps",
                      Icons.directions_walk_outlined, Colors.purple),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  workoutBox(
                      context, "Sleep", "6 hr", "Hours", Icons.bed, myGreen),
                  workoutBox(context, "Water", "2 Lits", "liters",
                      Icons.whatshot_outlined, myBlue),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  workOutRow(
                      context, "Workout", "40", " min", 0.05, myBlack, true,
                      check: true),
                  workOutRow(context, "Weekly Average", "30", " min", 0.035,
                      myGrey, false),
                ],
              ),
              barChartCustom(context)
            ],
          ),
        ),
      ),
    );
  }

  workOutRow(context, text1, text2, text3, size, color, bold, {check = false}) {
    return Column(
      children: [
        text(context, text1, size, color, bold: bold),
        Visibility(
          visible: check,
          child: heightBox(context, 0.01),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            text(context, text2, 0.09, myBlack, bold: true),
            text(
              context,
              text3,
              0.05,
              myGrey,
            ),
          ],
        ),
      ],
    );
  }

  Widget barChartCustom(context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.transparent,
        child: BarChart(
          BarChartData(
              barTouchData: barTouchData,
              titlesData: titlesData(context),
              borderData: borderData,
              barGroups: barGroups,
              alignment: BarChartAlignment.spaceAround,
              maxY: dynamicHeight(context, 0.02),
              gridData: FlGridData(show: false)),
        ),
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: const EdgeInsets.all(0),
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.y.round().toString(),
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );
  FlTitlesData titlesData(context) {
    return FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
        showTitles: true,
        getTextStyles: (context, value) => TextStyle(
          color: const Color(0xff7589a2),
          fontWeight: FontWeight.bold,
          fontSize: dynamicWidth(context, 0.03),
        ),
        margin: dynamicHeight(context, 0.02),
        getTitles: (double value) {
          switch (value.toInt()) {
            case 0:
              return 'S';
            case 1:
              return 'M';
            case 2:
              return 'T';
            case 3:
              return 'W';
            case 4:
              return 'T';
            case 5:
              return 'F';
            case 6:
              return 'S';
            default:
              return '';
          }
        },
      ),
      leftTitles: SideTitles(showTitles: false),
      topTitles: SideTitles(showTitles: false),
      rightTitles: SideTitles(showTitles: false),
    );
  }

  FlBorderData get borderData => FlBorderData(
        show: false,
      );
  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
                y: 8, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
                y: 10, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
                y: 14, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
                y: 15, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
                y: 13, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
                y: 10, colors: [Colors.lightBlueAccent, Colors.greenAccent])
          ],
        ),
      ];
}
