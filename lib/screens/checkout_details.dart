import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class CheckoutDetails extends StatefulWidget {
  const CheckoutDetails({Key? key}) : super(key: key);

  @override
  _CheckoutDetailsState createState() => _CheckoutDetailsState();
}

class _CheckoutDetailsState extends State<CheckoutDetails> {
  String dropdownvalue = 'MM';
  var items = ['MM'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: dynamicWidth(context, 0.04),
            vertical: dynamicHeight(context, 0.02),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              colorfulButton1(context, "Confirm", myBlack, myYellow),
            ],
          ),
        ),
        backgroundColor: myBlack,
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: dynamicHeight(context, .87),
              child: Column(
                children: [
                  heightBox(context, 0.03),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, 0.05)),
                    child: bar(context, true, back: true),
                  ),
                  heightBox(context, 0.02),
                  text(context, "Checkout Details", 0.06, myWhite, bold: true),
                  heightBox(context, 0.04),
                  Row(
                    children: [
                      Container(
                        width: dynamicWidth(context, 0.85),
                        height: dynamicHeight(context, 0.25),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Colors.yellow, Colors.orange]),
                          color: myBlack,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                            bottomRight: Radius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.camera_alt_rounded,
                                size: dynamicHeight(context, 0.05),
                                color: myWhite,
                              ),
                              heightBox(context, 0.02),
                              Container(
                                width: dynamicWidth(context, 0.26),
                                height: dynamicHeight(context, 0.04),
                                decoration: BoxDecoration(
                                  color: myWhite,
                                  borderRadius: BorderRadius.circular(
                                    dynamicWidth(context, 0.05),
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: dynamicHeight(context, 0.01),
                                ),
                                child: text(context, "Scan Card", 0.03, myBlack,
                                    bold: true),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  heightBox(context, 0.03),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: dynamicWidth(context, 0.05)),
                      child: Column(
                        children: [
                          inputTextWidget(
                            context,
                            "  Card Holder",
                            false,
                          ),
                          heightBox(context, 0.01),
                          inputTextWidget(context, "  Card Number", true),
                          heightBox(context, 0.02),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              text(context, "Expriation Date", 0.03, myWhite),
                              widthBox(context, 0.005),
                              text(context, "Code", 0.03, myWhite),
                              widthBox(context, 0.03)
                              //widthBox(context, dynamicSize)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              DropdownButton<String>(
                                value: "MM",
                                style: TextStyle(
                                  color: myWhite,
                                  fontSize: dynamicWidth(context, 0.03),
                                ),
                                icon: Icon(Icons.arrow_drop_down_sharp,
                                    color: myWhite,
                                    size: dynamicWidth(context, 0.05)),
                                items: <String>['MM', 'B', 'C', 'D']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                              DropdownButton<String>(
                                value: "YYYY",
                                style: TextStyle(
                                  color: myWhite,
                                  fontSize: dynamicWidth(context, 0.03),
                                ),
                                icon: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  color: myWhite,
                                  size: dynamicWidth(
                                    context,
                                    0.05,
                                  ),
                                ),
                                items: <String>['YYYY', 'B', 'C', 'D']
                                    .map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (_) {},
                              ),
                              SizedBox(
                                width: dynamicWidth(context, 0.12),
                                child: inputTextWidget(context, "code", true),
                              ),
                              widthBox(context, 0.005),
                            ],
                          ),
                          heightBox(context, 0.08),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
