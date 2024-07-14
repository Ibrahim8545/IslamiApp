import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';

class Sebha extends StatefulWidget {
  const Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  double angle = 0;
  int index=0;
  List<String> Azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset('assets/images/head of seb7a.png'),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    OnTap();
                  },
                  child: Image.asset(
                    'assets/images/body of seb7a.png',
                    height: 234,
                    width: 232,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 27,
        ),
        const Text(
          'عدد التسبيحات',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'ElMessiri',
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 27,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child:  Text(
              '$counter',
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 27,
        ),
        Center(
          child: Container(
            padding:const  EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              '${Azkar[index]}',
              style:const  TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
    OnTap() {
    counter++;
    if (counter % 33 == 0) {
      index++;
     
      counter = 0;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}

