import 'package:dotted_border/dotted_border.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class CaloriesDetails extends StatelessWidget {
  const CaloriesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              heightBox(context, 0.02),
              bar(context, true,
                  centerCheck: true,
                  centerText: "Calories Details",
                  editIcon: Icons.mode_edit_outlined,
                  editColor: myOrange,
                  pop: true,
              ),
              heightBox(context, 0.02),
              Center(child: text(context, "Keep Going!", 0.04, myGrey)),
              Center(
                  child: text(
                      context, "You Have To Eat More Calories!", 0.08, myBlack,
                      bold: true)),
              Center(
                child: CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  circularStrokeCap: CircularStrokeCap.round,
                  radius: 250.0,
                  lineWidth: 15.0,
                  percent: 0.7,
                  center: DottedBorder(
                    dashPattern: [10, 10, 10, 10],
                    color: myOrange,
                    borderType: BorderType.Circle,
                    strokeWidth: 4,
                    child: Container(
                      width: dynamicWidth(context, 0.45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.local_fire_department_outlined,
                            size: 50.0,
                            color: myOrange,
                          ),
                          text(context, "159", 0.08, myBlack, bold: true),
                          text(context, "Calories", 0.06, myGrey),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: myGrey,
                  progressColor: myOrange,
                ),
              ),
              rowText(context, "My Activity", "Today", 0.06, myBlack, true),

            ],
          ),
        ),
      ),
    );
  }
}
