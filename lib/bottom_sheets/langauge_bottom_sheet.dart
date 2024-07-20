import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet  extends StatelessWidget {
  const LanguageBottomSheet  ({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Locale currentLocale=context.locale;
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
          InkWell(
            onTap: () {
              //pro.changeLanguage(context,'en');
              context.setLocale(Locale('en'));
            },
            child: Row(
              children: [
                Text(
                  'english'.tr(),
                  style: Theme.of(context).
                  textTheme.
                  bodyMedium?.
                  copyWith(
                    color:currentLocale==Locale('en')?
                     AppColor.primaryColor:AppColor.blackColor
                  ),
                  ),
                const Spacer(),
                currentLocale==Locale('en')?
                Icon(Icons.done,size: 35,):SizedBox(),
              ],
            ),
          ),

          const SizedBox(height: 30,),

          InkWell(
            onTap: () {
              context.setLocale(Locale('ar'));
                //pro.changeLanguage(context,'ar');
            },
            child: Row(
              children: [
                Text(
                  'arabic'.tr(),
                  style: Theme.of(context).
                  textTheme.
                  bodyMedium?.
                  copyWith(
                    
                    color:currentLocale!=Locale('en')?
                     AppColor.primaryColor:AppColor.blackColor
                    
                  ),
                  ),
                const Spacer(),
                               currentLocale!=Locale('en')?
                Icon(Icons.done,size: 35,):SizedBox()
              ],
            ),
          ),
          
                 
          
        ],
      ),
    );
  }
}