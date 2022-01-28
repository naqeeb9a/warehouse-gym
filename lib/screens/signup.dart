import "package:flutter/material.dart";
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/subscription.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

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
                heightBox(context, 0.015),
                bar(context, true, back: true),
                Center(
                  child: SizedBox(
                    width: dynamicWidth(context, 0.4),
                    child: Image.asset("assets/warehouse.png"),
                  ),
                ),
                heightBox(context, 0.005),
                text(context, "Sign Up", 0.06, myWhite, bold: true),
                heightBox(context, 0.005),
                text(context, "Fill the detail to sign up account", 0.03,
                    myGrey),
                heightBox(context, 0.01),
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
                inputTextWidget(
                  context,
                  "  Confirm Password",
                  true,
                ),
                inputTextWidget(
                  context,
                  "  Phone No",
                  false,
                ),
                heightBox(context, 0.04),
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
                    text(context, "If You already have an account !", 0.03,
                        myWhite),
                    InkWell(
                      onTap: () {
                        pop(context);
                        pop(context);
                        pop(context);
                      },
                      child: text(context, " Login", 0.03, myOrange),
                    ),
                 heightBox(context, 0.03)
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
