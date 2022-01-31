import 'package:carousel_slider/carousel_slider.dart';
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
                    rowText(
                        context, "Trainers", "See all", 0.04, myBlack, true),
                    heightBox(context, 0.02),
                    SizedBox(
                     height: dynamicHeight(context, 0.6),
                      child: ListView(
                        children: [
                          CarouselSlider(
                            items: [
                              discoverCard(context,"https://img3.goodfon.com/wallpaper/nbig/5/a1/bodibilder-bodybuilder-7693.jpg","Steve Jobs" , "BodyBuilding"),
                              discoverCard(context,"https://images.unsplash.com/photo-1579758682665-53a1a614eea6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60","Lucifer","Boxing"),
                              discoverCard(context,"https://images.unsplash.com/photo-1591089627083-d9d049d833f9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fGd5bXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60","John Smith","MMA"),
                            ],
                            options: CarouselOptions(
                              autoPlay: true,
                              height: dynamicHeight(context, 0.6),
                             // width:dynamicWidth(context, 1),
                              enlargeCenterPage: true,
                              enableInfiniteScroll: true,
                              aspectRatio: 16 / 9,
                              autoPlayCurve: Curves.fastOutSlowIn,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              viewportFraction: 0.8,
                            ),
                          )
                        ],
                      ),
                    ),
                    // discoverCard(context),
                    heightBox(context, 0.02),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    rowText(
                        context, "Exercise", "See all", 0.04, myWhite, true),
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

discoverCard(context, image, name, expertise) {
  return Stack(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
        child: SizedBox(
          height: dynamicHeight(context, 0.5),
          width: dynamicWidth(context, 0.7),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(dynamicWidth(context, 0.1)),
          child: Container(
            width: dynamicWidth(context, 0.7),
            height: dynamicHeight(context, 0.27),
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
                    text(context, name, 0.044, myWhite, bold: true),
                    text(
                      context,
                      expertise,
                      0.034,
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
                          width: dynamicWidth(context, 0.3),
                          height: dynamicHeight(context, 0.05),
                          decoration: BoxDecoration(
                            color: myGrey.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                          ),
                          
                          child: Center(
                            child: text(context, "Message", 0.03, myBlack,
                                bold: true),
                          ),
                        ),
                        Container(
                          width: dynamicWidth(context, 0.3),
                          height: dynamicHeight(context, 0.05),
                          decoration: BoxDecoration(
                            color: myYellow,
                            borderRadius: BorderRadius.circular(
                              dynamicWidth(context, 0.05),
                            ),
                          ),
                         
                          child: Center(
                            child: text(context, "Booked", 0.03, myBlack,
                                bold: true),
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
    ],
  );
}
