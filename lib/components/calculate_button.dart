import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String name;
  const CalculateButton(
      {super.key,
      required this.onPressed,
      required this.name,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 81, 139),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                icon,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
