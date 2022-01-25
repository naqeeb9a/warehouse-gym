import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/activity.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/app_routes.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlack,
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: dynamicWidth(context, 0.05)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox(context, 0.02),
              bar(context, true, centerCheck: true, centerText: "Settings"),
              heightBox(context, 0.06),
              text(context, "General", 0.04, myOrange),
              listSetting(context,null, "Notifications", true),
              listSetting(context,null, "Health", false),
              listSetting(context,null, "Sound", true),
              listSetting(context,null, "Privacy", false, iconCheck: true),
              heightBox(context, 0.02),
              text(context, "Account", 0.04, myOrange),
              listSetting(context,null, "Edit Profile", false, iconCheck: true),
              listSetting(context,Activity(), "Activity", false, iconCheck: true),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listSetting(context,page, text1, check, {iconCheck = false}) {
  bool value1 = check;
  return Column(
    children: [
      StatefulBuilder(
        builder: (BuildContext context, setState) {
          return InkWell(
            onTap:page==null?(){}: () {
              push(
                context,
                page,
              );
            },
            child: ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: text(context, text1.toString(), 0.04, myWhite, bold: true),
              trailing: iconCheck == true
                  ? Icon(
                      Icons.arrow_forward_ios,
                      size: dynamicWidth(context, 0.04),
                      color: myWhite,
                    )
                  : Switch(
                      activeColor: myOrange,
                      inactiveTrackColor: myWhite,
                      onChanged: (value) {
                        setState(() {
                          value1 = value;
                        });
                      },
                      value: value1,
                    ),
            ),
          );
        },
      ),
      Divider(
        color: myGrey.withOpacity(0.3),
      )
    ],
  );
}
