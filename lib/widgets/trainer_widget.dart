import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

Widget trainerWorkCard(context, intText, data) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(dynamicWidth(context, 0.025)),
    child: Container(
      width: dynamicWidth(context, 0.23),
      height: dynamicHeight(context, 0.12),
      color: myGrey.withOpacity(0.6),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text(context, intText, 0.06, myBlack, bold: true),
            heightBox(context, 0.01),
            text(context, data, 0.04,myWhite),
          ],
        ),
      ),
    ),
  );
}
