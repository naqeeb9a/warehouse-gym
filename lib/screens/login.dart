import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/bottom_nav.dart';
import 'package:warehouse_gym/screens/signup.dart';
import 'package:warehouse_gym/screens/subscription.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                text(context, "Sign In", 0.08, myWhite, bold: true),
                heightBox(context, 0.01),
                text(context, "Fill the detail to sign in account", 0.03, myGrey),
                heightBox(context, 0.02),
                inputTextWidget(
                  context,
                  "  Email",
                  false,
                ),
                inputTextWidget(context, "  Password", true),
                heightBox(context, 0.02),
                Align(
                  alignment: Alignment.centerRight,
                  child: text(context, "Forgot Password?", 0.03, myOrange),
                ),
                heightBox(context, 0.05),
                Align(
                    alignment: Alignment.center,
                    child: colorfulButton(context, "Sign In", myBlack, myYellow,
                        function: () {
                      push(context, const Subscription());
                    })),
                heightBox(context, 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    text(context, "Don't have an account?", 0.03, myWhite),
                    InkWell(
                      onTap :  () {
                        push(context, const SignUp());
                      },
                      child: text(context, " Signup", 0.03, myOrange),),
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

Widget bar(context, leadingIcon,
    {centerCheck = false,
    centerText = "",
    editIcon = Icons.arrow_back_ios,
    editColor = Colors.transparent,
    back = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      leadingIcon == true
          ? back == true
              ? InkWell(
                  onTap: () {
                    pop(context);
                  },
                  child: CircleAvatar(
                    radius: dynamicWidth(context, 0.035),
                    backgroundColor: myWhite,
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: dynamicWidth(context, 0.01)),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: myBlack,
                        size: dynamicWidth(context, 0.04),
                      ),
                    ),
                  ),
                )
              : Container()
          : Container(),
      (centerCheck == true)
          ? Align(
              alignment: Alignment.center,
              child: text(context, centerText, 0.04, myWhite, bold: true))
          : text(context, "Need Help?", 0.03, myGrey),
      centerCheck == true
          ? CircleAvatar(
              radius: dynamicWidth(context, 0.037),
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                  radius: dynamicWidth(context, 0.035),
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(left: dynamicWidth(context, 0.01)),
                    child: Icon(
                      editIcon,
                      color: editColor,
                      size: dynamicWidth(context, 0.04),
                    ),
                  )),
            )
          : Container(),
    ],
  );
}

Widget inputTextWidget(context, hint, isPassword) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.01)),
    child: TextFormField(
      obscureText: isPassword == true ? true : false,
      cursorColor: myGrey,
      style: TextStyle(color:myWhite,
        fontSize: dynamicWidth(context, 0.03),
      ),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            TextStyle(fontSize: dynamicWidth(context, 0.03), color: myWhite),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: myGrey.withOpacity(0.3)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: myGrey.withOpacity(0.3)),
        ),
      ),
    ),
  );
}

Widget colorfulButton(context, text1, textColor, containerColor,
    {function = ""}) {
  return InkWell(
    onTap: function == "" ? () {} : function,
    child: Container(
        width: dynamicWidth(context, 0.7),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(dynamicWidth(context, 0.05))),
        padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.02)),
        child: text(context, text1, 0.05, textColor)),
  );
}

Widget colorfulButton1(context, text1, textColor, containerColor,
    {function = ""}) {
  return InkWell(
    onTap: function == "" ? () {} : function,
    child: Container(
        width: dynamicWidth(context, 0.5),
        height: dynamicHeight(context, 0.05),
        decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(dynamicWidth(context, 0.15),),),
        // padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.015)),
        child: Center(child: text(context, text1, 0.04, textColor,bold: true),),),
  );
}
