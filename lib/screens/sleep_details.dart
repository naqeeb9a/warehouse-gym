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

class SleepDetails extends StatelessWidget {
  const SleepDetails({Key? key}) : super(key: key);

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
                  centerText: "Steps",
                  editIcon: Icons.mode_edit_outlined,
                  editColor: myGreen,
                  pop: true,
              ),
              heightBox(context, 0.02),
              Center(child: text(context, "Great Work", 0.04, myGrey)),
              Center(
                  child: text(
                      context, "Your Daily Tasks Almost Done!", 0.08, myBlack,
                      bold: true)),
              Center(
                child: Container(
                  width: dynamicWidth(context, 0.7),
                  child: Image.asset('assets/cat-moon.png'),
                ),
              ),
              rowText(context, "My Activity", "Today", 0.06, myBlack, true),
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
