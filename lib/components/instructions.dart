import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Instructions",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text("1. Enter your weight in kilograms.",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              )),
          Text(
            "2. Enter your height in centimeters.",
          ),
          Text(
            "3. Choose the gender you identify with from the dropdown menu.",
          ),
        ],
      ),
    );
  }
}
