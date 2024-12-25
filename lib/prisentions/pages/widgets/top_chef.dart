import 'package:flutter/material.dart';

class TopChef extends StatelessWidget {
  const TopChef({super.key, required this.image, required this.name});

  final String image, name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          width: 82.69,
          height: 74,
        ),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
