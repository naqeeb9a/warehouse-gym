import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/subscription.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heightBox(context, 0.06),
                Center(
                  child: Container(
                    width: dynamicWidth(context, 0.4),
                    child: Image.asset("assets/warehouse.png"),
                  ),
                ),
                heightBox(context, 0.05),
                text(context, "Sign Up", 0.08, myWhite, bold: true),
                heightBox(context, 0.01),
                text(context, "Fill the detail to sign up account", 0.03, myGrey),
                heightBox(context, 0.02),
                inputTextWidget(
                  context,
                  "  Username",
                  false,
                ),
                inputTextWidget(
                  context,
                  "  Email",
                  false,
                ),
                inputTextWidget(context, "  Password", true),
                heightBox(context, 0.07),
                Align(
                    alignment: Alignment.center,
                    child: colorfulButton(context, "Sign Up", myBlack, myYellow,
                        function: () {
                      push(context, const Subscription());
                    })),
                heightBox(context, 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "If You already have an account !", 0.03, myWhite),
                    InkWell(
                      onTap: () {
                        pop(context);
                      },
                      child: text(context, " Login", 0.03, myOrange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}