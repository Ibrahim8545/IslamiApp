import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';

class LanguageBottomSheet  extends StatelessWidget {
  const LanguageBottomSheet  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration:const BoxDecoration(
         color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24)
        )
      ),
   
      padding:const  EdgeInsets.all(18),
      
        
      child: Column(
        mainAxisSize: MainAxisSize.min,
      
        children: [
          Row(
            children: [
              Text(
                'English',
                style: Theme.of(context).
                textTheme.
                bodyMedium?.
                copyWith(
                  color: AppColor.primaryColor
                ),
                ),
              const Spacer(),
              Icon(Icons.done,size: 35,),
            ],
          ),

          const SizedBox(height: 30,),

          Row(
            children: [
              Text(
                'Arabic',
                style: Theme.of(context).
                textTheme.
                bodyMedium?.
                copyWith(
                  color: Colors.black
                ),
                ),
              const Spacer(),
              //Icon(Icons.done,size: 35,),
            ],
          ),
          
                 
          
        ],
      ),
    );
  }
}