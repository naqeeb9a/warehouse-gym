import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/bottom_nav.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(context, 0.04),
              bar(context, false),
              heightBox(context, 0.05),
              text(context, "Sign In", 0.08, myBlack, bold: true),
              heightBox(context, 0.01),
              text(context, "Fill the detail to sign in account", 0.03, myGrey),
              heightBox(context, 0.02),
              inputTextWidget(context, "  Email", false),
              inputTextWidget(context, "  Password", true),
              heightBox(context, 0.05),
              Align(
                  alignment: Alignment.center,
                  child: colorfulButton(context, "Sign In", myBlack, myYellow,
                      function: () {
                    push(context, const BottomNavBar());
                  })),
              heightBox(context, 0.02),
              Align(
                alignment: Alignment.center,
                child: text(context, "Forgot Password?", 0.03, Colors.orange),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget bar(context, leadingIcon, {centerCheck = false, centerText = ""}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      leadingIcon == true
          ? CircleAvatar(
              radius: dynamicWidth(context, 0.037),
              backgroundColor: myGrey.withOpacity(0.3),
              child: CircleAvatar(
                  radius: dynamicWidth(context, 0.035),
                  backgroundColor: myWhite,
                  child: Padding(
                    padding: EdgeInsets.only(left: dynamicWidth(context, 0.01)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: myBlack,
                      size: dynamicWidth(context, 0.04),
                    ),
                  )),
            )
          : Container(),
      (centerCheck == true)
          ? Align(
              alignment: Alignment.center,
              child: text(context, centerText, 0.04, myBlack, bold: true))
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
                      Icons.arrow_back_ios,
                      color: Colors.transparent,
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
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: dynamicWidth(context, 0.03)),
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
