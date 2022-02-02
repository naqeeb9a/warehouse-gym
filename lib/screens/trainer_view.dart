import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/screens/trainer_subscription.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';
import 'package:warehouse_gym/widgets/trainer_widget.dart';

// ignore: must_be_immutable
class TrainerView extends StatefulWidget {
  dynamic image ;
  String name , expertise,work,experience,cilent;
  TrainerView({ required this.image, required this.name,required this.expertise,required this.work,required this.experience,required this.cilent, Key? key }) : super(key: key);

  @override
  _TrainerViewState createState() => _TrainerViewState();
}

_launchEmail() async {
  String email = "cmctech@ouiquit.com";
  if (await canLaunch("mailto:$email")) {
    await launch("mailto:$email");
  } else {
    throw 'Could not launch';
  }
}


class _TrainerViewState extends State<TrainerView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: myBlack,
        body: Hero(
          tag :0,
          child: InteractiveViewer(
            child: Stack(
              children: [
                SizedBox(
                  height: dynamicHeight(context, 1),
                  width: dynamicWidth(context, 1),
                  child: Image.network(
                  widget.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft :Radius.circular(dynamicWidth(context, 0.1)),topRight: Radius.circular(dynamicWidth(context, 0.1))),
                    child: Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, 0.35),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: myWhite.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: myBlack.withOpacity(0.8),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, 0.03),
                            vertical: dynamicHeight(context, 0.01),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              text(context, widget.name, 0.05, myWhite, bold: true),
                              text(
                                context,
                                widget.expertise,
                                0.044,
                                myOrange,
                              ),
                              //heightBox(context, 0.02),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: dynamicWidth(context, 0.02),
                                  vertical: dynamicHeight(context, 0.02),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    trainerWorkCard(context, "4", "Work Experience",0.22,0.1,fontSize: 0.044,fontSize2:0.04),
                                    trainerWorkCard(context, "8", "Years Experience",0.22,0.1,
                                        fontSize: 0.044, fontSize2: 0.04),
                                    trainerWorkCard(context, "21", "Active cilents",0.22,0.1,
                                        fontSize: 0.044, fontSize2: 0.04),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                              
                                  InkWell(
                                    onTap :() async {
                                        await _launchEmail();
                                    },
                                    child: Container(
                                      width: dynamicWidth(context, 0.4),
                                      height: dynamicHeight(context, 0.05),
                                      decoration: BoxDecoration(
                                        color: myGrey.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(
                                          dynamicWidth(context, 0.05),
                                        ),
                                      ),
                                      child: Center(
                                        child: text(context, "Email", 0.04, myBlack,
                                            bold: true),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap :() {
                                      push(context, const TrainerSubscription());
                                    },
                                    child: Container(
                                      width: dynamicWidth(context, 0.4),
                                      height: dynamicHeight(context, 0.05),
                                      decoration: BoxDecoration(
                                        color: myYellow,
                                        borderRadius: BorderRadius.circular(
                                          dynamicWidth(context, 0.05),
                                        ),
                                      ),
                                      child: Center(
                                        child: text(context, "Book", 0.04, myBlack,
                                            bold: true),
                                            
                                      ),
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Padding(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}