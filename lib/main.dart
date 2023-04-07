import 'package:auth_ui/constant.dart';
import 'package:auth_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Constant.PrimaryColor, // set status bar color
    ));

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        applyElevationOverlayColor: true,
        appBarTheme: AppBarTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
