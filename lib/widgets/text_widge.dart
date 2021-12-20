import 'package:flutter/material.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';

Widget text(context, text, size, color,
    {bold = false, textAlignment = TextAlign.center}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: dynamicWidth(context, size),
      fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
    ),
    textAlign: textAlignment,
  );
}
