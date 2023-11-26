import 'package:flutter/material.dart';

class ThemeChangerBtn extends StatelessWidget {
  const ThemeChangerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          // height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.light_mode_rounded)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.dark_mode_rounded)),
            ],
          ),
        )
      ],
    );
  }
}
