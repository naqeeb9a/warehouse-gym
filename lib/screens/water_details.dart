import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class WaterDetails extends StatelessWidget {
  const WaterDetails({Key? key}) : super(key: key);

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
                centerText: "Water Details",
                editIcon: Icons.mode_edit_outlined,
                editColor: myBlue,
                back: true,
              ),
              heightBox(context, 0.03),
              Center(
                child: text(context, "Good Job!", 0.04, myOrange),
              ),
              heightBox(context, 0.02),
              Center(
                child: text(
                    context, "Your Daily Intake Of Water", 0.08, myWhite,
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
                    dashPattern: const [10, 10, 10, 10],
                    color: myBlue,
                    borderType: BorderType.Circle,
                    strokeWidth: 4,
                    child: SizedBox(
                      width: dynamicWidth(context, 0.45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.whatshot_outlined,
                            size: 50.0,
                            color: myBlue,
                          ),
                          text(context, "4", 0.08, myWhite, bold: true),
                          text(context, "Liters", 0.06, myLightGrey),
                        ],
                      ),
                    ),
                  ),
                  backgroundColor: myGrey,
                  progressColor: myBlue,
                ),
              ),
              heightBox(context, 0.02),
              rowText(context, "My Activity", "Today", 0.06, myWhite, true),
            ],
          ),
        ),
      ),
    );
  }
}
