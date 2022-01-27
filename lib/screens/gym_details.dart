import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class AlQuoz extends StatelessWidget {
  const AlQuoz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: dynamicHeight(context, 0.92),
            width: dynamicWidth(context, 0.9),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  bar(context, true,
                      centerCheck: true, centerText: "AL QUOZ", back: true),
                  heightBox(context, 0.03),
                  text(
                      context,
                      "Productivity is at an all-time high in the busy streets of Al Quoz, brimming with industrialists and businessmen. The Warehouse Gym at Al Quoz stands out, with its graffiti-clad walls and highly energetic atmosphere among the industrialised setting. An ideal place for hustlers to let off steam and significantly elevate their ability to focus.",
                      0.05,
                      myWhite),
                  heightBox(context, 0.04),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: text(context, "Facilities :", 0.07, myYellow,
                        bold: true),
                  ),
                  heightBox(context, 0.01),
                  Container(
                    height: dynamicHeight(context, 0.3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: myYellow,
                        width: 3,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        rowText2(context, "  • PERSONAL TRAINING",
                            "• OLYMPIC LIFTING   ", 0.035, myWhite),
                        rowText2(context, "  • BODYBUILDING",
                            "• FUNCTIONAL TRAINING AREA   ", 0.035, myWhite),
                        rowText2(context, "  •  CROSSFIT ZONE",
                            "• FREE WEIGHTS   ", 0.035, myWhite),
                        rowText2(context, "  • CARDIO ZONE",
                            "• SQUAT RACKS   ", 0.035, myWhite),
                        rowText2(context, "  • SQUAT RACKS",
                            "• BOXING BAGS   ", 0.035, myWhite),
                        rowText2(context, "  • BLACKBOX STUDIO",
                            "• RENTAL STUDIO   ", 0.035, myWhite),

                        text(context, " EXTRA FACILITIES :", 0.05, myOrange,bold: true),
                        rowText2(context, "  • SHOWERS",
                            "• CHANGING ROOMS   ", 0.035, myWhite),
                      ],
                    ),
                  ),
                  heightBox(context, 0.05),
                  text(context, "Open Hours", 0.06, myYellow,bold: true),
                  heightBox(context, 0.03),
                  rowText2(context, "Monday – Friday",
                      "Saturday – Sunday", 0.045, myOrange),
                  heightBox(context, 0.02),
                  rowText2(context, "05:30 AM – 12:00 AM",
                      "07:00 AM – 10:00 PM", 0.04, myWhite),
                  heightBox(context, 0.05),
                  text(context, "ADDRESS", 0.06, myYellow,bold: true),
                  heightBox(context, 0.03),
                  text(context, "Warehouse 23 \nUmm Suqeim Rd. Ind.3, Al Quoz \n(Opposite Lulu Hypermarket Barsha)", 0.05, myWhite)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
