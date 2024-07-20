import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/bottom_sheets/langauge_bottom_sheet.dart';
import 'package:islamiapp/bottom_sheets/theme_bottom_sheet.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:provider/provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    Locale currentLocale=context.locale;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'theme'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
               builder:(context) {
                 return ThemeBottomSheet();
               },
                );
            },
            child: Container(
              padding:const  EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColor.primaryColor)),
              child: Text(
             pro.appTheme==ThemeMode.light?   
             'light'.tr():
             'dark'.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'language'.tr(),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 12,
          ),
          GestureDetector(
                        onTap: () {
              showModalBottomSheet(
                context: context,
               builder:(context) {
                 return LanguageBottomSheet();
               },
                );
            },
            child: Container(
              padding:const  EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColor.primaryColor)),
              child: Text(
                currentLocale!=Locale('en')?
             'arabic'.tr():'english'.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
