import 'package:bmi_calculator/components/age_selector.dart';
import 'package:bmi_calculator/components/calculate_button.dart';
import 'package:bmi_calculator/components/gender_button.dart';
import 'package:bmi_calculator/components/height_selector.dart';
import 'package:bmi_calculator/components/weight_selector.dart';
import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:bmi_calculator/controllers/theme_controller.dart';
import 'package:bmi_calculator/views/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    BMIController bmiController = Get.put(BMIController());
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 20,
                    ),
                    child: Text(
                      'BMI Calculator',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: theme.onBackground,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        themeController.changeTheme();
                      },
                      icon: Icon(
                        themeController.isDark.value
                            ? Icons.light_mode_rounded
                            : Icons.dark_mode_rounded,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GenderButton(
                    onPress: () {
                      bmiController.genderHandle("Male");
                    },
                    icon: Icons.male_rounded,
                    label: "Male",
                    color: theme.secondaryContainer,
                  ),
                  GenderButton(
                    onPress: () {
                      bmiController.genderHandle("Female");
                    },
                    icon: Icons.female_rounded,
                    label: "Female",
                    color: theme.onSecondaryContainer,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const HeightSelector(),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeightSelector(),
                  AgeSelector(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CalculateButton(
                onPressed: () {
                  bmiController.calculateBMI();
                  Get.to(const ResultPage());
                },
                name: "Calculate",
                icon: Icons.arrow_forward_rounded,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
