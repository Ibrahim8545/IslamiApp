import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     
 
      children: [
              SizedBox(height: 130,),
        Image.asset(
          'assets/images/radio bg.png',
          height: 222,
          ),
          SizedBox(height: 57,),
          Text(
            'إذاعة القرآن الكريم'
            ,style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
            ),
              SizedBox(height: 57,),
            Image.asset(
          'assets/images/radio play.png',
          height: 41.4,
          ),

      ],
    );
  }
}