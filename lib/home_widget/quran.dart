import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        
        Image.asset(
          'assets/images/quran _tab.png',
          height: 227,
          ),
          const Divider(thickness: 3,color: AppColor.primaryColor,),
          const Text(
            'Sura Names',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'ElMessiri',
              fontWeight:FontWeight.w600
            ),
            ),
          const Divider(thickness: 3,color: AppColor.primaryColor,)

      ],
    );
  }
}