import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/home_page_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

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
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
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
                    homeBar(context, check: true, text1: "Discover"),
                    heightBox(context, 0.02),
                    discoverCard(context),
                    heightBox(context, 0.02),
                    rowText(context, "Select by Goal", 0.05, myBlack, true,
                        check: true)
                  ],
                ),
              ),
              SizedBox(
                height: dynamicHeight(context, 0.35),
                width: dynamicWidth(context, 1),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return gymCards(context, images[index]["img"], check: true);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: dynamicWidth(context, 0.05)),
                child: Column(
                  children: [
                    rowText(context, "Add New Task", 0.04, myBlack, true),
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
          height: dynamicHeight(context, 0.2),
          width: dynamicWidth(context, 1),
          child: Image.network(
            "https://img3.goodfon.com/wallpaper/nbig/5/a1/bodibilder-bodybuilder-7693.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        bottom: dynamicHeight(context, 0.03),
        left: dynamicWidth(context, 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(context, "Custom Workout", 0.06, myWhite, bold: true),
            text(context, "Smart Creator", 0.04, myWhite.withOpacity(0.9)),
          ],
        ),
      ),
    ],
  );
}
