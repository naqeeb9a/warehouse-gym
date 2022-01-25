import 'package:dotted_border/dotted_border.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/essential_widgets.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class SleepDetails extends StatelessWidget {
  const SleepDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                  context,
                  true,
                  centerCheck: true,
                  centerText: "Sleep",
                  editIcon: Icons.mode_edit_outlined,
                  editColor: myGreen,
                  pop: true,
                ),
