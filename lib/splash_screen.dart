import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/home_widget/home_screen.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:provider/provider.dart';

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
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);

      }

      );
  }
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return  Container(
      color:pro.appTheme==ThemeMode.light?
       Color(0xffFFFFFF)
       : AppColor.primaryDark
       ,
      child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.asset(pro.appTheme==ThemeMode.light?
                'assets/images/splash_bg.png'
                :'assets/images/splash dark.png',
                width: 262,
                height: 262,
               
                ),
            ),
            const Spacer()
          ]
          ),
    );
  }
}