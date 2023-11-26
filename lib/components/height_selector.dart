import 'package:bmi_calculator/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    BMIController bmiController = Get.put(BMIController());
    final theme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Height (CM)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Obx(
              () => SfTheme(
                data: SfThemeData(
                  sliderThemeData: SfSliderThemeData(
                    tooltipBackgroundColor: theme.onBackground,
                    tooltipTextStyle: TextStyle(
                      color: theme.background,
                    ),
                  ),
                ),
                child: SfSlider(
                  tooltipShape: const SfPaddleTooltipShape(),
                  min: 100,
                  max: 400,
                  value: bmiController.height.value,
                  interval: 50,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  activeColor: theme.primary,
                  onChanged: (dynamic value) {
                    bmiController.height.value = value;
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
