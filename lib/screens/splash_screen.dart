import 'package:bmicalculator/screens/home_screen.dart';
import 'package:bmicalculator/styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
    return Scaffold(
        backgroundColor: AppColor.THEME,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //App Logo
              Padding(
                padding: EdgeInsets.only(
                  top: 80,
                  bottom: 10,
                ),
                child: Image(
                  width: MediaQuery.of(context).size.width / 3,
                  image: AssetImage(
                    'assets/images/splash_logo.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),

              //App name
              Text("BMI CALCULATOR", style: AppStyle.APP_NAME),
              const Spacer(flex: 4),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 30,
                  height: 30,
                  child: const CircularProgressIndicator(
                    color: Colors.pink,
                    strokeWidth: 5,
                  ),
                ),
              ),
              const Text(
                "Check your BMI...",
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 80),
                child: Text('Pacman chạy qua'),
              ),
              Spacer(),
            ],
          ),
        ));
  }
}
