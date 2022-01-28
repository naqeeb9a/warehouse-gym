import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';
import 'package:warehouse_gym/widgets/trainer_widget.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover>
    with AutomaticKeepAliveClientMixin {
  List images = [
    {
      "img":
          "https://img5.goodfon.com/wallpaper/nbig/f/15/back-fitness-gym-power-pose.jpg"
    },
    {
      "img":
          "https://static.toiimg.com/thumb/msid-83483048,imgsize-896783,width-800,height-600,resizemode-75/83483048.jpg"
    },
    {
      "img":
          "https://simlionfitness.com/wp-content/uploads/2019/10/shutterstock_227369644-min-768x523.jpg"
    },
    {
      "img":
          "https://img5.goodfon.com/wallpaper/nbig/f/15/back-fitness-gym-power-pose.jpg"
    },
    {
      "img":
          "https://static.toiimg.com/thumb/msid-83483048,imgsize-896783,width-800,height-600,resizemode-75/83483048.jpg"
    },
    {
      "img":
          "https://simlionfitness.com/wp-content/uploads/2019/10/shutterstock_227369644-min-768x523.jpg"
    },
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: myBlack,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    heightBox(context, 0.02),
                    homeBar(context, check: true, text1: "Personal Trainer"),
                    heightBox(context, 0.02),
                    discoverCard(context),
                    heightBox(context, 0.02),
                    rowText(
                        context, "Trainings", "See all", 0.05, myBlack, true,
                        check: true)
                  ],
                ),
              ),
              // SizedBox(
              //   height: dynamicHeight(context, 0.35),
              //   width: dynamicWidth(context, 1),
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     itemCount: images.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       return gymCards(context, images[index]["img"], check: true);
              //     },
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    // rowText(context, "Add New Task", "See all", 0.04, myBlack,
                    //     true),
                    ListView.builder(
                      itemCount: images.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          vertical: dynamicHeight(context, 0.02)),
                      itemBuilder: (BuildContext context, int index) {
                        return gymCardsRow(context, images[index]["img"],
                            (index + 1).toString());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

discoverCard(context) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
        child: SizedBox(
          height: dynamicHeight(context, 0.6),
          width: dynamicWidth(context, 1),
          child: Image.network(
            "https://img3.goodfon.com/wallpaper/nbig/5/a1/bodibilder-bodybuilder-7693.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
          child: Container(
            width: dynamicWidth(context, 0.9),
            height: dynamicHeight(context, 0.32),
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
                  children: [
                    text(context, "Steve Jobs ", 0.06, myWhite, bold: true),
                    text(
                      context,
                      "Gym Coach ",
                      0.04,
                      myOrange,
                    ),
                    //heightBox(context, 0.02),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: dynamicWidth(context, 0.02),
                        vertical: dynamicHeight(context, 0.02),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          trainerWorkCard(context, "4", "Work Experience"),
                          trainerWorkCard(context, "32", "Completed Workouts"),
                          trainerWorkCard(context, "21", "Active cilents"),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: dynamicWidth(context, 0.35),
                          height: dynamicHeight(context, 0.06),
                          decoration: BoxDecoration(
                            color: myGrey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: dynamicHeight(context, 0.018),
                          ),
                          child: text(context, "Message", 0.04, myBlack,
                              bold: true),
                        ),
                        Container(
                          width: dynamicWidth(context, 0.35),
                          height: dynamicHeight(context, 0.06),
                          decoration: BoxDecoration(
                            color: myYellow,
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: dynamicHeight(context, 0.018),
                          ),
                          child: text(context, "Booked", 0.04, myBlack,
                              bold: true),
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
    ],
  );
}
