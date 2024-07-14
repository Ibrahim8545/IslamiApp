import 'package:flutter/material.dart';
import 'package:islamiapp/home_widget/home_screen.dart';
import 'package:islamiapp/splash_screen.dart';
import 'package:islamiapp/sura_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SplashScreen.routeName:(context) => SplashScreen(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen()
      },
    );
  }
}
