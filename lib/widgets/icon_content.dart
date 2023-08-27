import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  const IconContent({
    super.key,
    required this.icon,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 88,
        ),
        Text(
          label,
        ),
      ],
    );
  }
}
