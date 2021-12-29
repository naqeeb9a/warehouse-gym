import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:warehouse_gym/screens/bottom_nav.dart';
import 'package:warehouse_gym/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final MaterialColor primaryColor = const MaterialColor(
    0xff0b0b0b,
    <int, Color>{
      50: Color(0xff0b0b0b),
      100: Color(0xff0b0b0b),
      200: Color(0xff0b0b0b),
      300: Color(0xff0b0b0b),
      400: Color(0xff0b0b0b),
      500: Color(0xff0b0b0b),
      600: Color(0xff0b0b0b),
      700: Color(0xff0b0b0b),
      800: Color(0xff0b0b0b),
      900: Color(0xff0b0b0b),
    },
  );



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    return MaterialApp(
      title: 'WareHouse Gym',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: const Login(),
    );
  }


}
