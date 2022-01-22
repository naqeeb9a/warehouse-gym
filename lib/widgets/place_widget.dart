import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';

Widget placeCard(context, validity, paisa) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
    width: dynamicWidth(context, 0.9),
    height: dynamicHeight(context, 0.15),
    decoration:
        BoxDecoration(color: myWhite, borderRadius: BorderRadius.circular(20),
        image:DecorationImage(image: NetworkImage("https://static.dezeen.com/uploads/2019/10/warehouse-gym-springs-interiors-vshd-design_dezeen_1704_col_2.jpg"),
        ),),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  validity,
                  style: TextStyle(
                    fontSize: dynamicWidth(context, 0.05),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: dynamicHeight(context, 0.007),
            ),
            Row(
              children: [
                Text(
                  paisa,
                  style: TextStyle(
                      fontSize: dynamicWidth(context, 0.04),
                      color: myBlack.withOpacity(0.4)),
                ),
              ],
            ),
          ],
        ),
        const Radio(
          value: "yes",
          groupValue: null,
          onChanged: null,
          visualDensity: VisualDensity(horizontal: -4),
        ),
      ],
    ),
  );
}
