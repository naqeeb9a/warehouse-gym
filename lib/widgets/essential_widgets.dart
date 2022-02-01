import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/payment_screen.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

Widget rowText(context, text1, text2, size, color, bold, {check = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      text(context, text1, size, color, bold: bold),
      check == true ? Container() : text(context, text2, 0.03, myOrange)
    ],
  );
}

Widget homeBar(context, {check = false, text1 = "", activityCheck = false}) {
  var date = DateTime.now();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      check == true
          ? text(context, text1, 0.06, myWhite, bold: true)
          : Column(
              crossAxisAlignment: activityCheck == true
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                activityCheck == true
                    ? text(context, DateFormat('EEEE').format(date).toString(),
                        0.04, myOrange)
                    : text(context, "Good Morning! ", 0.04, myOrange),
                activityCheck == true
                    ? text(
                        context,
                        DateFormat('dd' " " 'MMMM').format(date).toString(),
                        0.06,
                        myWhite)
                    : text(context, "Sami Ahmed ", 0.06, myWhite, bold: true),
              ],
            ),
      check == true
          ? CircleAvatar(
              radius: dynamicWidth(context, 0.052),
              backgroundImage: const NetworkImage(
                  "https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg"),
            )
          : Row(
              children: [
                activityCheck == true
                    ? Container()
                    : CircleAvatar(
                        radius: dynamicWidth(context, 0.052),
                        backgroundColor: myGrey.withOpacity(0.3),
                        child: CircleAvatar(
                            radius: dynamicWidth(context, 0.05),
                            backgroundColor: myWhite,
                            child: Icon(
                              Icons.search,
                              color: myBlack,
                              size: dynamicWidth(context, 0.06),
                            )),
                      ),
                widthBox(context, 0.05),
                CircleAvatar(
                  radius: dynamicWidth(context, 0.052),
                  backgroundImage: const NetworkImage(
                      "https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg"),
                )
              ],
            )
    ],
  );
}

Widget customProgress(context, progressDegrees, fadeInDuration) {
  return CustomPaint(
    child: Container(
      height: dynamicHeight(context, 0.18),
      width: dynamicWidth(context, 0.2),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: AnimatedOpacity(
          opacity: progressDegrees > 30 ? 1.0 : 0.0,
          duration: fadeInDuration,
          child: text(context, "75%", 0.05, myWhite, bold: true)),
    ),
    painter: RadialPainter(progressDegrees),
  );
}

Widget workoutBox(context, text1, text2, text3, icon, color, color1) {
  return Container(
    padding: EdgeInsets.all(
      dynamicWidth(context, 0.05),
    ),
    width: dynamicWidth(context, 0.42),
    height: dynamicHeight(context, 0.17),
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: [color, color1]),
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text(context, text1, 0.04, myWhite, bold: true),
            CircleAvatar(
                backgroundColor: color,
                radius: dynamicWidth(context, 0.035),
                child: Icon(
                  icon,
                  color: myWhite,
                  size: dynamicWidth(context, 0.04),
                )),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(context, text2, 0.05, myBlack, bold: true),
            text(context, text3, 0.03, myWhite),
          ],
        ),
      ],
    ),
  );
}

Widget expandableThingy(
    context, icon, text1, text2, text3, text4, text5, text6) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.01)),
        child: Icon(icon, color: myWhite),
      ),
      Expanded(
        child: ExpandablePanel(
          header: Padding(
            padding:
                EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.008)),
            child: rowText(context, text1, text2, 0.056, myWhite, false,
                check: false),
          ),
          // text(context, "6am-7am", 0.06, myGrey),
          collapsed: const Text(
            "",
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(context, text3, 0.05, myYellow),
                  text(context, text4, 0.05, myYellow),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(context, text5, 0.04, myWhite, bold: true),
                  text(context, text6, 0.04, myWhite, bold: true),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}


Widget size(context, text1, {isPressed = false}) {
  return Container(
    width: dynamicWidth(context, 0.12),
    height: dynamicHeight(context, 0.04),
    decoration: BoxDecoration(
      color: isPressed == true ? myYellow.withOpacity(0.7) : myBlack,
      borderRadius: BorderRadius.circular(
        dynamicWidth(context, 0.02),
      ),
      boxShadow: [
        BoxShadow(
          color: myWhite.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 6,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Center(
      child: text(context, text1, 0.03, myWhite),
    ),
  );
}

Widget stickyBottom(context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.04),
        vertical: dynamicHeight(context, 0.02)),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: myWhite,
          radius: dynamicWidth(context, 0.05),
          child: Icon(
            Icons.bookmark_border_outlined,
            color: myBlack,
            size: dynamicWidth(context, 0.04),
          ),
        ),
        widthBox(context, 0.13),
        colorfulButton1(
          context,
          "Add to Cart",
          myBlack,
          myYellow,
          function: () {
             MotionToast.success(
              title: const Text(
                "ADDED SUCCESSFULLY",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              description: const Text(
                "The item added to cart",
                style: TextStyle(fontSize: 12),
              ),
              layoutOrientation: ORIENTATION.ltr,
              animationType: ANIMATION.fromRight,
              width: 300,
              toastDuration: const Duration(milliseconds: 2200),
            ).show(context);
          },
        ),
      ],
    ),
  );
}

Widget itemCard(context, name, size, price) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: dynamicHeight(context, 0.015)),
    child: SizedBox(
      height: dynamicHeight(context, 0.12),
      child: Row(
        children: [
          SizedBox(
            width: dynamicWidth(context, 0.2),
            height: dynamicHeight(context, 0.1),
            child: Image.network(
                "https://whgym.com/wp-content/uploads/2020/10/whgym-whiteResized-01.png"),
          ),
          widthBox(context, 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(context, 0.02),
              text(context, name, 0.04, myWhite),
              heightBox(context, 0.005),
              text(context, size, 0.03, myOrange),
              heightBox(context, 0.003),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(context, price, 0.04, myWhite),
                  widthBox(context, 0.3),
                  Container(
                    decoration: BoxDecoration(
                      color: myGrey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: [
                        widthBox(context, 0.03),
                        text(context, "-", 0.06, myOrange),
                        widthBox(context, 0.02),
                        text(context, "1", 0.04, myWhite),
                        widthBox(context, 0.02),
                        text(context, "+", 0.05, myOrange),
                        widthBox(context, 0.03),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buyNow(context) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context, 0.04),
        vertical: dynamicHeight(context, 0.02)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        colorfulButton1(context, "Buy Now", myBlack, myYellow, function: () {
          push(context, const PaymentScreen());
        }),
      ],
    ),
  );
}

Widget rowText2(context, text1, text2, size, color, {check = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      text(context, text1, size, color, bold: true),
      check == true
          ? Container()
          : text(context, text2, size, color, bold: true)
    ],
  );
}
