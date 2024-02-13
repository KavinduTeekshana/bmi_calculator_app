import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'calculate_screen.dart';
import 'info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/calculate',
      getPages: [
        GetPage(name: '/calculate', page: () => CalculateScreen()),
        GetPage(name: '/info', page: () => InfoScreen()),
      ],
    );
  }
}
