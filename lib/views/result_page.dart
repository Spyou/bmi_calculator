import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    final theme = Theme.of(context).colorScheme;
    var percentageValue = bmiController.tempBMI.value / 100;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: theme.onBackground,
                        size: 20,
                      )),
                  Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: theme.onBackground,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your BMI is',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Obx(
                () => CircularPercentIndicator(
                  footer: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      bmiController.BMIStatus.value,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: bmiController.colorStatus.value,
                      ),
                    ),
                  ),
                  animationDuration: 1000,
                  radius: 120.0,
                  lineWidth: 20.0,
                  animation: true,
                  percent: percentageValue,
                  center: CircleAvatar(
                    radius: 70,
                    child: Text(
                      "${bmiController.BMI.value}%",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor:
                      bmiController.colorStatus.value.withOpacity(0.2),
                  progressColor: bmiController.colorStatus.value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: theme.primaryContainer,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Obx(
                    () => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(bmiController.detail.value,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: theme.onBackground,
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                hoverDuration: const Duration(milliseconds: 0), // default value
                splashColor: const Color.fromARGB(255, 255, 81, 139),
                highlightColor: const Color.fromARGB(255, 255, 81, 139),
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Get.back();
                },
                child: const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 81, 139),
                    radius: 40,
                    child: Icon(
                      Icons.refresh_rounded,
                      size: 30,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
