import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/trainer_category_detail.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widget.dart';

Widget trainerCard(context, category, image) {
  return InkWell(
    onTap :() {
      push(context, TrainerDetail(category: category, image: image));
    },
    child: Container(
      width: dynamicWidth(context, 0.9),
      height: dynamicHeight(context, 0.15),
      decoration: BoxDecoration(
        color: myBlack,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myBlack.withOpacity(.5), BlendMode.colorBurn),
          image: NetworkImage(image),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // heightBox(context, 0.025),
          Container(
            color: myYellow,
            child: text(context, category, 0.044, myBlack, bold: true),
          ),
          heightBox(context, 0.025),
        ],
      ),
    ),
  );
}
