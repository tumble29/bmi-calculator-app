import 'package:bmicalculator/localizations/app_localization.dart';
import 'package:bmicalculator/styles.dart';
import 'package:bmicalculator/widgets/item_container.dart';
import 'package:flutter/material.dart';

class HeightSelector extends StatefulWidget {
  final BuildContext context;
  HeightSelector({super.key, required this.context});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  double _currentHeight = 180;
  @override
  Widget build(BuildContext context) {
    return ItemContainer(
      container: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.context.localize('label_height'),
            style: AppStyle.CARD_SECONDARY_TEXT_STYLE,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(_currentHeight.round().toString(),
                  style: AppStyle.CARD_PRIMARY_TEXT_STYLE),
              Text(
                "cm",
                style: AppStyle.CARD_SECONDARY_TEXT_STYLE,
              )
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(),
            child: Slider(
              value: _currentHeight,
              max: 220,
              min: 120,
              onChanged: (value) {
                setState(() {
                  _currentHeight = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
