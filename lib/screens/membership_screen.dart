import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/payment_screen.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

// ignore: must_be_immutable
class MemberShip extends StatefulWidget {
  String name;
   MemberShip({  required this.name,Key? key }) : super(key: key);

  @override
  _MemberShipState createState() => _MemberShipState();
}

class _MemberShipState extends State<MemberShip> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:  Padding(
          padding: EdgeInsets.symmetric(
                horizontal: dynamicWidth(context, 0.04),
                vertical: dynamicHeight(context, 0.02)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              colorfulButton1(context, "Buy Membership", myBlack, myYellow,function: () {
                push(context, const PaymentScreen());
              }),
            ],
          ),
        ),
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child :Column(
            children: [
               Container(
                  width: dynamicWidth(context, 1),
                  height: dynamicHeight(context, 0.5),
                  decoration: const BoxDecoration(
                   // color: myWhite,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.squarespace-cdn.com/content/v1/59e7a30d32601e519d56fff9/1527457273864-JINRA9Y0ET5HBTTGUCHW/miktabie_CFG_4.jpg?format=1500w"),
                    ),
                  ),
                  child: Column(children: [
                    Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, 0.04),
                            vertical: dynamicHeight(context, 0.02),
                          ),
                          child: bar(
                            context,
                            true,
                            centerCheck: true,
                            back: true,
                          ),
                        ),
                  ],)
                ),
                heightBox(context, 0.04),
                text(context, widget.name, 0.044, myWhite,bold:true),
                heightBox(context, 0.02),
                text(context, "12 Months 333AED*/month", 0.044, myYellow,bold:true),
                heightBox(context, 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "12-Months", 0.04, myWhite,bold:true),
                    text(context, "333 AED*/month (3,990)", 0.04, myYellow,bold:true),
                  ],
                ),
                heightBox(context, 0.01),
                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "6-Months", 0.04, myWhite, bold: true),
                    text(context, "425 AED*/month (2,550)", 0.04, myYellow,
                        bold: true),
                  ],
                ),
                heightBox(context, 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "3-Months", 0.04, myWhite, bold: true),
                    text(context, "475 AED*/month (1,425)", 0.04, myYellow,
                        bold: true),
                  ],
                ),
                heightBox(context, 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "1 Month Only", 0.04, myWhite, bold: true),
                    text(context, "599 AED", 0.04, myYellow),
                  ],
                ),
                heightBox(context, 0.015),
                text(context, "*subject to 5% VAT", 0.035, myWhite, bold: true),
                heightBox(context, 0.015),
               
            ],
          ),
          
        
        )
      ),
    );
  }
}