import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro =Provider.of<MyProvider>(context);
    return Container(
     
      decoration: BoxDecoration(
         color:pro.appTheme==ThemeMode.light?
          Colors.white
          :AppColor.primaryDark,
        borderRadius:const  BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24)
        )
      ),
   
      padding:const  EdgeInsets.all(18),
      
        
      child: Column(
        mainAxisSize: MainAxisSize.min,
      
        children: [
          GestureDetector(
            onTap: () {
              pro.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  'light'.tr(),
                  style: Theme.of(context).
                  textTheme.
                  bodyMedium?.
                  copyWith(
                    
                    color:pro.appTheme==ThemeMode.light ? 
                    AppColor.primaryColor:
                    Colors.white

                  ),
                  ),
                const Spacer(),
                   pro.appTheme==ThemeMode.light ? 
                const Icon(
                  size: 35,
               
                  Icons.done
                ):SizedBox()
              ],
            ),
          ),

          const SizedBox(height: 30,),

          GestureDetector(
            onTap: () {
              pro.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  'dark'.tr(),
                  style: Theme.of(context).
                  textTheme.
                  bodyMedium?.
                  copyWith(
                    color: pro.appTheme!=ThemeMode.light ? 
                    AppColor.primaryColor:
                    AppColor.blackColor
                  ),
                  ),
                const Spacer(),
                pro.appTheme!=ThemeMode.light ? 
                Icon(
                  size: 35,
               
                  Icons.done
                ):SizedBox()
              ],
            ),
          ),
          
                 
          
        ],
      ),
    );
  }
}