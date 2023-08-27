import 'package:bmicalculator/screens/home_screen.dart';
import 'package:bmicalculator/widgets/icon_content.dart';
import 'package:bmicalculator/widgets/item_container.dart';
import 'package:flutter/material.dart';

class GenderSelector extends StatefulWidget {
  final IconData icon;
  final String label;
  final ValueChanged<Gender> onTap;
  Gender gender = Gender.other;
  GenderSelector(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      required this.gender});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  late Gender gender;
  @override
  void initState() {
    gender = Gender.other;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemContainer(
        container: TextButton(
            onPressed: () {
              setState(() {
                gender = (gender != Gender.other)
                    ? Gender.other
                    : (widget.label == "MALE")
                        ? Gender.male
                        : Gender.female;
              });
              widget.onTap.call(widget.gender);
            },
            child: IconContent(
                icon: widget.icon,
                color: (gender == Gender.male && widget.label == "MALE")
                    ? Colors.blue
                    : (gender == Gender.female && widget.label == "FEMALE")
                        ? Colors.orange
                        : Colors.white,
                label: widget.label)));
  }
}
