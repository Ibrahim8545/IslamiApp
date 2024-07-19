import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColor.blackColor),
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'ElMessiri',
            color: Colors.black),
      ),
      dividerTheme:
          const DividerThemeData(thickness: 3, color: AppColor.primaryColor),
      
      iconTheme: const IconThemeData(color: AppColor.primaryColor),
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColor.primaryColor,
        type: BottomNavigationBarType.fixed,
      ),

      textTheme:const  TextTheme(
        bodyLarge: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  color: Colors.black
                 
                ),
                bodyMedium: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                   color: Colors.black
                 
                ),
                bodySmall: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'ElMessiri',
                   color: Colors.black
                
                ),

      ),
      colorScheme:const ColorScheme(
        brightness: Brightness.light,
         primary: AppColor.primaryColor,
          onPrimary: AppColor.primaryColor,
           secondary: AppColor.primaryColor,
            onSecondary: AppColor.primaryColor, 
            error: AppColor.primaryColor,
             onError: AppColor.primaryColor,
              background: AppColor.primaryColor, 
              onBackground:AppColor.primaryColor,
               surface:AppColor.primaryColor,
                onSurface: AppColor.primaryColor)
      );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        iconTheme: IconThemeData(size: 30,color: Colors.white),
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            fontFamily: 'ElMessiri',
            color: Colors.white),
      ),
      dividerTheme:
          const DividerThemeData(thickness: 3, color: AppColor.primaryColor),
      
      iconTheme: const IconThemeData(color: AppColor.yellowColor),
      
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColor.yellowColor,
        unselectedItemColor: Colors.white,
        backgroundColor: AppColor.primaryDark,
        type: BottomNavigationBarType.fixed,
      ),

      textTheme:const  TextTheme(
        bodyLarge: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'ElMessiri',
                  color: AppColor.yellowColor
                 
                ),
                bodyMedium: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                  color: AppColor.yellowColor
                 
                ),
                bodySmall: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'ElMessiri',
                  color: AppColor.yellowColor
                
                ),

      ),
      
  );
}
