import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/bottom_sheets/langauge_bottom_sheet.dart';
import 'package:islamiapp/bottom_sheets/theme_bottom_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Theme',
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
                'Light',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Language',
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
                'Arabic',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
