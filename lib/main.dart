// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/core/helper/buttom_nav_bar.dart';
import 'package:islamiapp/feature/home/view/home_view.dart';

void main() {
  // runApp(DevicePreview(builder: (context) => const IslamiApp()));
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ButtomNavBar(),
    );
  }
}
