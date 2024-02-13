import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculateScreen extends StatelessWidget {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  void calculateBMI() {
    double height = double.tryParse(heightController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;

    if (height > 0 && weight > 0) {
      double bmi = weight / (height * height);
      String result = bmi.toStringAsFixed(2);
      Get.toNamed('/info', arguments: result);
    } else {
      Get.snackbar('Error', 'Please Enter Valid Height and Weight');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculate')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height (Meters)'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (Kilograms)'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: calculateBMI,
              child: Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
