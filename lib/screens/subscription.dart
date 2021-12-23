import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Subscription extends StatefulWidget {
  const Subscription({Key? key}) : super(key: key);

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: dynamicHeight(context, 0.05)),
          child: SizedBox(
            width: dynamicWidth(context, .9),
            height: dynamicHeight(context, .86),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bar(
                      context,
                      true,
                      centerCheck: true,
                    ),
                    text(
                      context,
                      "Subscription",
                      .07,
                      myWhite,
                      bold: true,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(
                      context,
                      "GO PRO",
                      .07,
                      myWhite,
                      bold: true,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(
                      context,
                      "• Unlimited Workouts",
                      .05,
                      myWhite,
                      bold: false,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(
                      context,
                      "• Video Guide",
                      .05,
                      myWhite,
                      bold: false,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    text(
                      context,
                      "• Personal Plans",
                      .05,
                      myWhite,
                      bold: false,
                    ),
                  ],
                ),
                planCard(context, "Monthly", "40000/month"),
                planCard(context, "Annual", "20000/month"),
                planCard(context, "Free Trial", "7 free days"),
                colorfulButton(
                  context,
                  "Choose",
                  myBlack,
                  myYellow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget planCard(context, validity, paisa) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
    width: dynamicWidth(context, 0.9),
    height: dynamicHeight(context, 0.12),
    decoration:
        BoxDecoration(color: myWhite, borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  validity,
                  style: TextStyle(
                    fontSize: dynamicWidth(context, 0.05),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.007),
            ),
            Row(
              children: [
                Text(
                  paisa,
                  style: TextStyle(
                      fontSize: dynamicWidth(context, 0.04),
                      color: myBlack.withOpacity(0.4)),
                ),
              ],
            ),
          ],
        ),
        const Radio(
          value: "yes",
          groupValue: null,
          onChanged: null,
          visualDensity: VisualDensity(horizontal: -4),
        ),
      ],
    ),
  );
}
