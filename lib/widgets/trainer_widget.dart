import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

Widget trainerWorkCard(context, intText, data,width,height, {fontSize = 0.044,fontSize2=0.03}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(dynamicWidth(context, 0.025)),
    child: Container(
      width: dynamicWidth(context,width),
      height: dynamicHeight(context, height),
      color: myGrey.withOpacity(0.6),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text(context, intText, fontSize, myBlack, bold: true),
            heightBox(context, 0.01),
            text(context, data, fontSize2,myWhite),
          ],
        ),
      ),
    ),
  );
}
