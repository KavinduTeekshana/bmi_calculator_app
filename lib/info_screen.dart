import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String bmiResult = Get.arguments ?? '0.0';
    String category = 'Unknown';

    double bmi = double.tryParse(bmiResult) ?? 0.0;

    if (bmi < 16) {
      category = 'Severe undernourishment';
    } else if (bmi >= 16 && bmi < 16.9) {
      category = 'Medium undernourishment';
    } else if (bmi >= 17 && bmi < 18.4) {
      category = 'Slight undernourishment';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      category = 'Normal nutrition state';
    } else if (bmi >= 25 && bmi < 29.9) {
      category = 'Overweight';
    } else if (bmi >= 30 && bmi < 39.9) {
      category = 'Obesity';
    } else if (bmi >= 40) {
      category = 'Pathological obesity';
    }

    return Scaffold(
      appBar: AppBar(title: Text('BMI Information')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('BMI Result: $bmiResult'),
            SizedBox(height: 16),
            Text('Category: $category'),
          ],
        ),
      ),
    );
  }
}
