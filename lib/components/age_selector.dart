import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeSelector extends StatelessWidget {
  const AgeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: theme.primaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Age",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Obx(
                  () => Text(
                    bmiController.age.value.toString(),
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        style: ButtonStyle(
                          iconSize: MaterialStateProperty.all<double>(30),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            theme.primary,
                          ),
                        ),
                        onPressed: () {
                          bmiController.age.value--;
                        },
                        icon: const Icon(Icons.remove)),
                    IconButton(
                        style: ButtonStyle(
                          iconSize: MaterialStateProperty.all<double>(30),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                            theme.primary,
                          ),
                        ),
                        onPressed: () {
                          bmiController.age.value++;
                        },
                        icon: const Icon(Icons.add)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
