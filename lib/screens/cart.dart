import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/item_viewer.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: dynamicWidth(context, 0.05),
            ),
            child: Column(
              children: [
                heightBox(context, 0.02),
                homeBar(context),
                heightBox(context, 0.03),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(context, "We Sell Everything You Need", 0.05,
                            myWhite,
                            bold: true),
                      ],
                    ),
                    heightBox(context, 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        text(
                            context,
                            "Muscles soo big that you can't go through a door",
                            0.04,
                            myLightGrey),
                      ],
                    ),
                    heightBox(context, 0.04),
                    rowText(context, "Categories", "", 0.05, myWhite, true),
                    heightBox(context, 0.02),
                    Container(
                      width: dynamicWidth(context, 1),
                      height: dynamicHeight(context, 0.2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          dynamicWidth(context, 0.8),
                        ),
                      ),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (
                          context,
                          i,
                        ) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: dynamicWidth(context, 0.02),
                              vertical: dynamicHeight(context, 0.0125),
                            ),
                            child: Container(
                              width: dynamicWidth(context, 0.3),
                              // height :dynamicHeight(context,0.2),
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: myGrey,
                                      blurRadius: 4,
                                      offset: Offset(0, 1), // Shadow position
                                    ),
                                  ],
                                  image: DecorationImage(
                                      image: const NetworkImage(
                                          "https://media.istockphoto.com/photos/dumbbells-on-stand-in-gym-picture-id912113272?k=20&m=912113272&s=612x612&w=0&h=Pw0NPJuUYB3TbwlaB7GVjALyi1vNs6hZdTBswPLPu3s="),
                                      colorFilter: ColorFilter.mode(
                                          myBlack.withOpacity(.5),
                                          BlendMode.colorBurn),
                                      fit: BoxFit.cover),
                                  color: myBlack,
                                  borderRadius: BorderRadius.circular(
                                      dynamicWidth(context, 0.04))),

                              child: Padding(
                                padding: EdgeInsets.only(
                                    bottom: dynamicHeight(context, 0.02)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        text(
                                            context, "Dumbbells", 0.03, myWhite,
                                            bold: true),
                                        CircleAvatar(
                                          radius: dynamicWidth(context, 0.02),
                                          backgroundColor: myWhite,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: myOrange,
                                            size: dynamicWidth(context, 0.02),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    heightBox(context, 0.02),
                    rowText(context, "Accessories", "Show All", 0.05, myWhite,
                        true),
                    heightBox(context, 0.02),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      primary: true,
                      shrinkWrap: true,
                      itemCount: 5,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (160.0 / 170.0),
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: dynamicWidth(context, 0.04),
                            vertical: dynamicHeight(context, 0.02),
                          ),
                          child: InkWell(
                            onTap: () {
                              push(
                                context,
                                const ItemViewer(),
                              );
                            },
                            child: Container(
                              width: dynamicWidth(context, 0.43),
                              height: dynamicHeight(context, 0.2),
                              decoration: BoxDecoration(
                                color: myBlack,
                                borderRadius: BorderRadius.circular(
                                  dynamicWidth(context, 0.04),
                                ),
                                boxShadow: const [
                                  BoxShadow(
                                    color: myGrey,
                                    blurRadius: 4,
                                    offset: Offset(0, 1), // Shadow position
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
    
                                children: [
                                   Container(
                                     width: dynamicWidth(context, 0.43),
                                    height: dynamicHeight(context, 0.14),
                                     decoration:BoxDecoration(
                                       borderRadius: BorderRadius.circular(
                                         dynamicWidth(context, 0.04),),
                                       image: DecorationImage(
                                        image: const NetworkImage(
                                          "https://media.istockphoto.com/photos/woman-exercise-workout-in-gym-fitness-breaking-relax-holding-apple-picture-id871070868?k=20&m=871070868&s=612x612&w=0&h=Gh7o1IhxEUldQIKv7nATlVm2rb3JmkKNkYz33_54A9w=",
                                        ),
                                        colorFilter: ColorFilter.mode(
                                            myBlack.withOpacity(.5),
                                            BlendMode.colorBurn),
                                        fit: BoxFit.cover,
                                      ),
                                     ),
                                   ),
                                  
                                  heightBox(context, 0.007),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      //widthBox(context,0.02),
                                      text(
                                          context, "Item", 0.03, myWhite,
                                          bold: true),
                                          //text(context, "Rs500", 0.03, myOrange),
                                    ],
                                  ),
                                
                                  heightBox(context, 0.01),
                                  
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
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
