import 'package:bmicalculator/styles.dart';
import 'package:bmicalculator/widgets/item_container.dart';
import 'package:flutter/material.dart';

class MeasurementContainer extends StatefulWidget {
  final String label;
  final int startingValue;
  final ValueChanged<int> onTap;
  const MeasurementContainer(
      {super.key,
      required this.label,
      required this.startingValue,
      required this.onTap});

  @override
  State<MeasurementContainer> createState() => _MeasurementContainerState();
}

class _MeasurementContainerState extends State<MeasurementContainer> {
  late int value;
  Widget changeValueButton(IconData icon, void Function() func) {
    return TextButton(
        onPressed: func,
        child: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.orange,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ));
  }

  @override
  void initState() {
    value = widget.startingValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ItemContainer(
      container: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(widget.label, style: AppStyle.CARD_SECONDARY_TEXT_STYLE),
        Text(
          value.toString(),
          style: AppStyle.CARD_PRIMARY_TEXT_STYLE,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            changeValueButton(Icons.exposure_minus_1, () {
              setState(() {
                value--;
              });
              widget.onTap.call(value);
            }),
            changeValueButton(Icons.plus_one, () {
              setState(() {
                value++;
              });
              widget.onTap.call(value);
            })
          ],
        )
      ]),
    );
  }
}
