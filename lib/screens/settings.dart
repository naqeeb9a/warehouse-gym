import 'package:flutter/material.dart';
import 'package:warehouse_gym/screens/login.dart';
import 'package:warehouse_gym/utils/config.dart';
import 'package:warehouse_gym/utils/dynamic_sizes.dart';
import 'package:warehouse_gym/widgets/text_widge.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              text(context, "General", 0.04, myGrey),
              listSetting(context, "Notifications", true),
              listSetting(context, "Health", false),
              listSetting(context, "Sound", true),
              listSetting(context, "Privacy", false, iconCheck: true),
              heightBox(context, 0.02),
              text(context, "Account", 0.04, myGrey),
              listSetting(context, "Edit Profile", false, iconCheck: true),
            ],
          ),
        ),
      ),
    );
  }
}

Widget listSetting(context, text1, check, {iconCheck = false}) {
  bool value1 = check;
  return Column(
    children: [
      StatefulBuilder(
        builder: (BuildContext context, setState) {
          return ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: text(context, text1, 0.04, myBlack, bold: true),
            trailing: iconCheck == true
                ? Icon(
                    Icons.arrow_forward_ios,
                    size: dynamicWidth(context, 0.04),
                  )
                : Switch(
                    onChanged: (value) {
                      setState(() {
                        value1 = value;
                      });
                    },
                    value: value1,
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
