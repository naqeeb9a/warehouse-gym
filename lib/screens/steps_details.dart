import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class StepsDetails extends StatelessWidget {
  const StepsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              heightBox(context, 0.02),
              bar(
                context,
                true,
                centerCheck: true,
                centerText: "Steps",
                editIcon: Icons.mode_edit_outlined,
                editColor: myPurple,
                back: true,
              ),
              heightBox(context, 0.03),
              Center(
                child: text(context, "Great Work", 0.04, myOrange),
              ),
              heightBox(context, 0.02),
              Center(
                child: text(
                    context, "Your Daily Tasks Almost Done!", 0.08, myWhite,
                    bold: true),
              ),
              heightBox(context, 0.03),
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
                    color: myPurple,
                    borderType: BorderType.Circle,
                    strokeWidth: 4,
                    child: Container(
                      width: dynamicWidth(context, 0.45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.directions_run_outlined,
                            size: 50.0,
                            color: myPurple,
                          ),
                          text(context, "768", 0.08, myWhite, bold: true),
                          text(context, "Steps", 0.06, myLightGrey),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: myGrey,
                  progressColor: myPurple,
                ),
              ),
              heightBox(context, 0.03),
              rowText(context, "My Activity", "Today", 0.06, myWhite, true),
              heightBox(context, 0.02),
              expandableThingy(context, Icons.directions_run_outlined,
                  "6am-7am", "", "Time", "Distance", "2h.30min", "20.6km"),
              expandableThingy(context, Icons.directions_run_outlined,
                  "10pm-11pm", "", "Time", "Distance", "1h.10min", "8.8km"),
            ],
          ),
        ),
      ),
    );
  }
}
