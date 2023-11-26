// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  RxString Gender = "Male".obs;
  RxInt weight = 0.obs;
  RxDouble height = 100.0.obs;
  RxInt age = 0.obs;
  RxString BMI = "".obs;
  RxDouble tempBMI = 0.0.obs;
  RxString BMIStatus = "".obs;
  Rx<Color> colorStatus = const Color(0xFFEA76FF).obs;
  RxString detail = "".obs;

  void genderHandle(String gender) {
    Gender.value = gender;
  }

  void calculateBMI() {
    var Hmeter = height / 100;
    tempBMI.value = weight / (Hmeter * Hmeter);
    BMI.value = tempBMI.toStringAsFixed(1);
    tempBMI.value = double.parse(BMI.value);
    findStatus();
  }

  void findStatus() {
    if (tempBMI.value < 18.5) {
      BMIStatus.value = "UnderWeight";
      colorStatus.value = const Color(0xFFFFC852);
      detail.value =
          "You are underweight, your body needs more calories to maintain a healthy weight. Try eating a balanced diet and increasing the amount of physical activity.";
    } else if (tempBMI.value >= 18.5 && tempBMI.value < 24.9) {
      BMIStatus.value = "Normal";
      colorStatus.value = const Color.fromARGB(255, 0, 255, 132);
      detail.value =
          "You are in a healthy weight range for young and middle-aged adults. Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.";
    } else if (tempBMI.value >= 25.0 && tempBMI.value < 29.9) {
      BMIStatus.value = "OverWeight";
      colorStatus.value = const Color(0xFFFF5252);
      detail.value =
          "You are overweight, your body needs fewer calories to maintain a healthy weight. Try eating a balanced diet and increasing the amount of physical activity.";
    } else if (tempBMI.value >= 30.0 && tempBMI.value < 34.9) {
      BMIStatus.value = "Obese";
      colorStatus.value = const Color(0xFFFF1744);
      detail.value =
          "You are obese, your body needs fewer calories to maintain a healthy weight. Try eating a balanced diet and increasing the amount of physical activity.";
    } else if (tempBMI.value > 35.0) {
      BMIStatus.value = "Extremely Obese";
      colorStatus.value = const Color(0xFFD50000);
      detail.value =
          "You are extremely obese, your body needs fewer calories to maintain a healthy weight. Try eating a balanced diet and increasing the amount of physical activity.";
    }
  }
}
