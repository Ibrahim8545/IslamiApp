import 'package:flutter/material.dart';
import 'package:islamiapp/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      (){
        Navigator.pushNamed(context, HomeScreen.routeName);

      }

      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Image.asset(
              'assets/images/logo2.png',
              width: 244,
              height: 262,
             
              ),
          ),
          Spacer()
        ]
        ),
    );
  }
}