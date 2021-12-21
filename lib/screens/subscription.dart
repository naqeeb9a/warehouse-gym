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
        child: SizedBox(
          width: dynamicWidth(context, .9),
          height: dynamicHeight(context, .86),
          // color: myYellow,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bar(context, true),
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
                    ".",
                    .07,
                    myWhite,
                    bold: true,
                  ),
                  text(
                    context,
                    "Unlimited Workouts",
                    .07,
                    myWhite,
                    bold: true,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
