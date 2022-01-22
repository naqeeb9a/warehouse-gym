import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

import 'login.dart';

class ItemViewer extends StatefulWidget {
  const ItemViewer({Key? key}) : super(key: key);

  @override
  State<ItemViewer> createState() => _ItemViewerState();
}

class _ItemViewerState extends State<ItemViewer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: stickyBottom(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.05),
            ),
            child: Column(
              children: [
                heightBox(context, 0.02),
                bar(context, true, centerCheck: true, centerText: "View Item",pop: true),
                heightBox(context, 0.01),
                Container(
                  height: dynamicHeight(context, 0.3),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          // 1
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/athlete-5888037.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 2
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/z/muscular-man-doing-pull-up-horizontal-bar-working-out-strong-fitness-male-pulling-showing-back-outdoors-100914287.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 3
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://thumbs.dreamstime.com/b/athlete-5888037.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: dynamicHeight(context, 0.3),
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                ),
                heightBox(context, 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(
                      context,
                      "Dumbbell",
                      0.075,
                      myBlack,
                      bold: false,
                    ),
                    text(
                      context,
                      "Rs5000",
                      0.055,
                      myBlack,
                      bold: false,
                    ),
                  ],
                ),
                heightBox(context, 0.03),
                Align(
                  alignment: Alignment.centerLeft,
                  child: text(context, "Size:", 0.055, myBlack),
                ),
                heightBox(context, 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    size(context, "1kg"),
                    size(context, "2kg"),
                    size(context, "5kg"),
                    size(context, "8kg"),
                  ],
                ),
                heightBox(context, 0.02),
                expandableThingy2(
                  context,
                  "Description",
                  "This is the most amazing dumbbell in the wajsdkhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhorld",
                ),
                heightBox(context, 0.02),
                expandableThingy2(
                  context,
                  "Delivery and Returns",
                  "We don't do that here",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
