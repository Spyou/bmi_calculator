import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPress;
  final Color color;

  const GenderButton(
      {super.key,
      required this.icon,
      required this.label,
      required this.color,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Obx(
        () => InkWell(
          onTap: onPress,
          child: Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                style: BorderStyle.solid,
                color: bmiController.Gender.value == label
                    ? theme.primary
                    : theme.primaryContainer,
              ),
              color: theme.primaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 80,
                  color: color,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
