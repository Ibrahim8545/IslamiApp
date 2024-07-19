import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamiapp/details_screens/hadeth_details.dart';
import 'package:islamiapp/home_widget/home_screen.dart';
import 'package:islamiapp/my_theme_data.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:islamiapp/splash_screen.dart';
import 'package:islamiapp/details_screens/sura_details_screen.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    
    EasyLocalization(
     supportedLocales:
      const [
        Locale('en'), 
        Locale('ar')
        ],
     path: "assets/translations",
     fallbackLocale: Locale('en'),
      child: ChangeNotifierProvider(
        create: (context) => MyProvider(),
        child: const  MyApp()),
    )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: pro.appTheme,
      theme:MyThemeData.lightTheme, 
      darkTheme:MyThemeData.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName:(context) => HomeScreen(),
        SplashScreen.routeName:(context) => SplashScreen(),
        SuraDetailsScreen.routeName:(context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(context)=>HadethDetailsScreen(),
      },
    );
  }
}
