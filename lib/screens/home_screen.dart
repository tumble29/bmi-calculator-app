import 'package:bmicalculator/localizations/app_localization.dart';
import 'package:bmicalculator/styles.dart';
import 'package:bmicalculator/widgets/gender_selector.dart';
import 'package:bmicalculator/widgets/height_selector.dart';
import 'package:bmicalculator/widgets/measurement_container.dart';
import 'package:flutter/material.dart';

enum Gender { male, female, other }

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender gender = Gender.other;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:
              TextButton(onPressed: () {}, child: const Icon(Icons.history)),
          centerTitle: true,
          title: Text(context.localize('title')),
          actions: const [Icon(Icons.refresh)],
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: AppColor.THEME,
        body: Column(
          children: [
            //Gender Select
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GenderSelector(
                      icon: Icons.male,
                      label: context.localize('label_male'),
                      onTap: (value) {
                        setState(() {
                          gender = value;
                        });
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => GenderSelector(
                        //         icon: Icons.male,
                        //         label: "MALE",
                        //         gender: gender,
                        //       ),
                        //     ));
                      },
                      gender: gender,
                    ),
                  ),
                  Expanded(
                    child: GenderSelector(
                      icon: Icons.female,
                      label: context.localize('label_female'),
                      onTap: (value) {
                        setState(() {
                          gender = value;
                        });
                      },
                      gender: gender,
                    ),
                  )
                ],
              ),
            ),
            //Height Select
            Expanded(child: HeightSelector(context: context)),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MeasurementContainer(
                        label: context.localize("label_weight"),
                        startingValue: 60,
                        onTap: (value) {
                          setState(() {
                            weight = value;
                          });
                        }),
                  ),
                  Expanded(
                    child: MeasurementContainer(
                      label: context.localize('label_age'),
                      startingValue: 20,
                      onTap: (value) {
                        setState(() {
                          age = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              color: Colors.pink,
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    context.localize('label_calculate'),
                    style: AppStyle.APP_NAME,
                  )),
            )
          ],
        ));
  }
}
