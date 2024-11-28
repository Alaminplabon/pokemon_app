import 'package:flutter/material.dart';

class FeatureTitleText extends StatelessWidget {
  final String text;
  const FeatureTitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "$text",
        style: const TextStyle(
          fontSize: 23.0,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
