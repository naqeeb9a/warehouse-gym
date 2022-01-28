import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';
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
        backgroundColor: myBlack,
        bottomNavigationBar: stickyBottom(context),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.05),
            ),
            child: Column(
              children: [
                heightBox(context, 0.02),
                bar(context, true, centerCheck: true, centerText: "View Item",back: true),
                heightBox(context, 0.01),
                SizedBox(
                  height: dynamicHeight(context, 0.5),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          // 1
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/improvement-and-getting-stronger-in-fitness-exercise-and-muscle-man-picture-id1012048876?k=20&m=1012048876&s=612x612&w=0&h=7GHjg1cP5wly2CCR0VHdWRfUeV8iXZxtukM-JnsBjrc="),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 2
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/heavy-weight-exercise-picture-id625739874?k=20&m=625739874&s=612x612&w=0&h=d8wzQd8HzzG__eSPo5-t4tEm6mBJotmR4zSqktUOFGM="),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // 3
                          Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image:  NetworkImage(
                                    "https://media.istockphoto.com/photos/weight-lifting-picture-id185068878?k=20&m=185068878&s=612x612&w=0&h=jBKUAV8gWilBMT6s2MY-Bm4BXmkVnCVNRmyie2Ur9UY="),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                           Container(
                            margin: const EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://media.istockphoto.com/photos/dumbbells-on-stand-in-gym-picture-id912113272?k=20&m=912113272&s=612x612&w=0&h=Pw0NPJuUYB3TbwlaB7GVjALyi1vNs6hZdTBswPLPu3s="),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          height: dynamicHeight(context, 0.5),
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration: const Duration(milliseconds: 800),
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
                    widthBox(context, 0.125),
                    text(
                      context,
                      "Dumbbell",
                      0.05,
                      myWhite,
                      bold :true
                    ),
                     Row(
                       children: [
                         Icon(Icons.star,
                            color: myYellow, size: dynamicHeight(context, 0.02)),
                            text(context, "(4.5)", 0.03, myGrey)
                       ],
                     ),
                    
                  ],
                ),
                heightBox(context, 0.01),
                text(
                  context,
                  "Rs: 5000",
                  0.04,
                  myOrange,
                ),
                
                heightBox(context, 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    text(context, "Size:", 0.05, myWhite, bold: true),
                    size(context, "1kg"),
                    size(context, "2kg"),
                    size(context, "5kg"),
                    size(context, "8kg"),
                  ],
                ),
                heightBox(context, 0.04),
                text(context, "Description", 0.05, myWhite, bold: true),
                heightBox(context, 0.01),
                text(context, "Minimalistic product detail screen for e-commerce", 0.03, myLightGrey)
                // expandableThingy2(
                //   context,
                //   "Description",
                //   "This is the most amazing dumbbell in the wajsdkhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhorld",
                // ),
                // heightBox(context, 0.02),
                // expandableThingy2(
                //   context,
                //   "Delivery and Returns",
                //   "We don't do that here",
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
