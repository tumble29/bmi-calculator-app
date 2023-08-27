import 'package:bmicalculator/styles.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final Widget container;

  ItemContainer({super.key, required this.container});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.UNSELECTED_BUTTON,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: container,
      ),
    );
  }
}
