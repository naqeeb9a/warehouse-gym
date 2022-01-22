import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/bottom_nav.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/subscription.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Place extends StatefulWidget {
  const Place({ Key? key }) : super(key: key);

  @override
  _PlaceState createState() => _PlaceState();
}

class _PlaceState extends State<Place> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child : Scaffold (
        backgroundColor: myBlack,
        body : Align(
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
                      "Choose Place",
                      .07,
                      myWhite,
                      bold: true,
                    ),
                  ],
                ),
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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     text(
                //       context,
                //       "• Unlimited Workouts",
                //       .05,
                //       myWhite,
                //       bold: false,
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     text(
                //       context,
                //       "• Video Guide",
                //       .05,
                //       myWhite,
                //       bold: false,
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     text(
                //       context,
                //       "• Personal Plans",
                //       .05,
                //       myWhite,
                //       bold: false,
                //     ),
                //   ],
                // ),
                 planCard(context, "Dubai", "40000/month"),
                // planCard(context, "Annual", "20000/month"),
                // planCard(context, "Free Trial", "7 free days"),
                colorfulButton(context, "Choose", myBlack, myYellow,
                    function: () {
                  push(context, const BottomNavBar());
                }),
              ],
            ),
          ),
        ),
      ),

      )
      
    );
  }
}