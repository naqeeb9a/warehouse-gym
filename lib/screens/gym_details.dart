import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/signup.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class GymDetail extends StatefulWidget {
  const GymDetail({Key? key}) : super(key: key);

  @override
  _GymDetailState createState() => _GymDetailState();
}

_makingPhoneCall() async {
  const url = 'tel:+971569943794';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_location() async {
  const url =
      'https://www.google.com/maps/place/The+Warehouse+Gym+-+Al+Quoz/@25.1181504,55.2077027,17z/data=!3m1!4b1!4m5!3m4!1s0x3e5f6bc21a5b0f63:0x750ec1967705cd3!8m2!3d25.1181504!4d55.2098914';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _GymDetailState extends State<GymDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: dynamicHeight(context, 1),
            width: dynamicWidth(context, 1),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: dynamicWidth(context, 0.04),
                  vertical: dynamicHeight(context, 0.02),
                ),
                child: Column(
                  children: [
                    bar(context, true,
                        centerCheck: true, centerText: "AL QUOZ", back: true),
                    heightBox(context, 0.03),
                    Container(
                      width: dynamicWidth(context, 0.9),
                      height: dynamicHeight(context, 0.25),
                      decoration: BoxDecoration(
                        color: myBlack,
                        borderRadius:
                            BorderRadius.circular(dynamicWidth(context, 0.03)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              myBlack.withOpacity(.5), BlendMode.colorBurn),
                          image: const NetworkImage(
                              "https://whgym.com/wp-content/uploads/elementor/thumbs/Al-Quoz-2-phi5gc1btya3l37eqpjiwxe59e55tg8rdbq41xa8jo.jpg"),
                        ),
                      ),
                    ),
                    heightBox(context, 0.01),
                    Align(
                      alignment: Alignment.centerLeft,
                      child:
                          text(context, "About :", 0.05, myYellow, bold: true),
                    ),
                    heightBox(context, 0.01),
                    text(
                        context,
                        "Productivity is at an all-time high in the busy streets of Al Quoz, brimming with industrialists and businessmen. The Warehouse Gym at Al Quoz stands out, with its graffiti-clad walls and highly energetic atmosphere among the industrialised setting. An ideal place for hustlers to let off steam and significantly elevate their ability to focus.",
                        0.04,
                        myWhite),
                    heightBox(context,0.02),
                    Container(
                      width: dynamicWidth(context,0.3),
                      height: dynamicHeight(context,0.04),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: myYellow,
                          width: 3,
                        ),
                      ),
                      child:Center(child: text(context, "View Classes", 0.03, myWhite,bold:true)),
                    ),
                    heightBox(context, 0.04),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: text(context, "Facilities :", 0.05, myYellow,
                          bold: true),
                    ),
                    heightBox(context, 0.01),
                    Container(
                      height: dynamicHeight(context, 0.3),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: myYellow,
                          width: 3,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          rowText2(context, "  • PERSONAL TRAINING",
                              "• OLYMPIC LIFTING   ", 0.03, myWhite),
                          rowText2(context, "  • BODYBUILDING",
                              "• FUNCTIONAL TRAINING AREA   ", 0.03, myWhite),
                          rowText2(context, "  •  CROSSFIT ZONE",
                              "• FREE WEIGHTS   ", 0.03, myWhite),
                          rowText2(context, "  • CARDIO ZONE",
                              "• SQUAT RACKS   ", 0.03, myWhite),
                          rowText2(context, "  • SQUAT RACKS",
                              "• BOXING BAGS   ", 0.03, myWhite),
                          rowText2(context, "  • BLACKBOX STUDIO",
                              "• RENTAL STUDIO   ", 0.03, myWhite),
                          text(context, " EXTRA FACILITIES :", 0.04, myOrange,
                              bold: true),
                          rowText2(context, "  • SHOWERS",
                              "• CHANGING ROOMS   ", 0.03, myWhite),
                        ],
                      ),
                    ),
                    heightBox(context, 0.04),
                    text(context, "Open Hours", 0.05, myYellow, bold: true),
                    heightBox(context, 0.02),
                    rowText2(context, "Monday – Friday", "Saturday – Sunday",
                        0.035, myOrange),
                    heightBox(context, 0.02),
                    rowText2(context, "05:30 AM – 12:00 AM",
                        "07:00 AM – 10:00 PM", 0.03, myWhite),
                    heightBox(context, 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        colorfulButton2(
                          context,
                          'Call',
                          myBlack,
                          myWhite,
                          function: () async {
                            await _makingPhoneCall();
                          },
                        ),
                        colorfulButton2(
                          context,
                          'Register',
                          myBlack,
                          myYellow,
                          function: () {
                            push(context, SignUp());
                          },
                        ),
                      ],
                    ),
                    heightBox(context, 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        colorfulButton2(
                          context,
                          'Location',
                          myBlack,
                          myYellow,
                          function: () async {
                            await _location();
                          },
                        ),
                      ],
                    ),
                    heightBox(context, 0.04),
                    text(context, "ADDRESS", 0.05, myYellow, bold: true),
                    heightBox(context, 0.01),
                    text(
                        context,
                        "Warehouse 23 \nUmm Suqeim Rd. Ind.3, Al Quoz \n(Opposite Lulu Hypermarket Barsha)",
                        0.03,
                        myWhite)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget colorfulButton2(context, title, textColor, containerColor,
    {function = ""}) {
  return InkWell(
    onTap: function == "" ? () {} : function,
    child: Container(
      width: dynamicWidth(context, 0.35),
      height: dynamicHeight(context, 0.045),
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          dynamicWidth(context, 0.05),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: dynamicHeight(context, 0.01),
      ),
      child: text(context, title, 0.04, textColor, bold: true),
    ),
  );
}
