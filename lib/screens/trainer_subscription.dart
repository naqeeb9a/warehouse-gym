import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/subscription.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class TrainerSubscription extends StatefulWidget {
  const TrainerSubscription({ Key? key }) : super(key: key);

  @override
  _TrainerSubscriptionState createState() => _TrainerSubscriptionState();
}

class _TrainerSubscriptionState extends State<TrainerSubscription> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child :Scaffold(
        backgroundColor: myBlack,
        body :  Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: dynamicHeight(context, 0.02),
          ),
          child: SizedBox(
            width: dynamicWidth(context, .9),
            height: dynamicHeight(context, .91),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bar(context, true,
                    centerCheck: true, back: true, centerText: "Trainer Subscription"),
                heightBox(context, 0.03),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     text(
                //       context,
                //       "GO PRO",
                //       .07,
                //       myWhite,
                //       bold: true,
                //     ),
                //   ],
                // ),
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
                heightBox(context, 0.015),
                SizedBox(
                  height: dynamicHeight(context, 0.6),
                  child: SingleChildScrollView(
                    child: Wrap(
                      runSpacing: 15,
                      children: [
                        planCard(context, "STANDARD MEMBERSHIP",
                            "Access to Al Quoz, Al Quoz Ladies Only Gym Springs Souk,\nIBN Battuta, Business Bay and Dubai Design District plus\nUnlimited Standard Group Classes."),
                        planCard(context, "PREMIUM MEMBERSHIP",
                            "Access to DIFC, Khawaneej, Khawaneej Ladies Only Gym\nand all Standard Branches plus Unlimited CrossFit Sessions\nand group classes."),
                        planCard(context, "PREMIUM PLUS",
                            "Access to All Locations, Unlimited CrossFit sessions and all\nother classes, Priority Booking, 25% Off On selected items\nin Juice Bar, 8x Guest Passes per month, 2x Recovery\nTreatments of your choice per month."),
                        planCard(context, "PAY AS YOU GO",
                            "Not ready to commit or on vacation\nwe have daily and weekly rates"),
                        planCard(context, "ONE DAY PASS",
                            "Just here to check the gym? Get the One Day Pass"),
                      ],
                    ),
                  ),
                ),
                heightBox(context, 0.002),
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}