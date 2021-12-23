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
          padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.034),vertical: dynamicHeight(context, 0.04)),
          child: Column(
              children: [
                homeBar(context,activityCheck: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    workoutBox(context,"Calories","1000","Kcal",Icons.local_fire_department_outlined,myRed),
                    workoutBox(context,"Steps","720","Steps",Icons.directions_walk_outlined ,myYellow),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    workoutBox(context,"Sleep","6 hr","Hours",Icons.star_border_outlined,myGreen),
                    workoutBox(context,"Water","2 Lits","liters",Icons.whatshot_outlined,myBlue),
                  ],
                ),
                Row(
                  children: [
                    text(context, "Workout", 0.05, myBlack,bold: true)
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text(context, "Weakly Average", 0.035, myGrey)
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text(context, "40", 0.09, myBlack,bold: true),
                        text(context, "min", 0.05, myGrey,),
                      ],
                    ),Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text(context, "30", 0.09, myBlack,bold: true),
                        text(context, "min", 0.05, myGrey,),
                      ],
                    )
                  ],
                ),
          BarChart(

            BarChartData(
              barGroups: [BarChartGroupData(x: 1,barRods: [
              BarChartRodData(
                y: 1 ,
                colors: [Colors.lime],
                width: dynamicWidth(context, 0.02),
                borderSide: const BorderSide(color: Colors.white, width: 0),
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  y: 20,
                  colors: [Colors.blueGrey],
                ),
              ),
            ],

            ),BarChartGroupData(x: 5),BarChartGroupData(x: 1),BarChartGroupData(x: 2),]
            ),
            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear, // Optional
          ),
              ],
          ),
        ),
      ),
    );
  }
}
