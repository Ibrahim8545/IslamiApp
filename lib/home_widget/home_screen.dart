import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/home_widget/ahadeeth.dart';
import 'package:islamiapp/home_widget/quran.dart';
import 'package:islamiapp/home_widget/radio.dart';
import 'package:islamiapp/home_widget/sebha.dart';
import 'package:islamiapp/home_widget/seeting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/main.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              'Islami app',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ElMessiri')),
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            backgroundColor:AppColor.primaryColor ,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: ''),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahdeeth.png')),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ],
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [Quran(), Sebha(), RadioTab(), Ahadeeth(), SettingTab()];
}

// class BottomNavigatorItem extends StatefulWidget {
//   BottomNavigatorItem({super.key});

//   @override
//   State<BottomNavigatorItem> createState() => _BottomNavigatorItemState();
// }

// class _BottomNavigatorItemState extends State<BottomNavigatorItem> {
//   int selectedIndex=0;

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex:selectedIndex,
//       onTap: (value) {
//         selectedIndex=value;
//         setState(() {
          
//         });
//       },
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.white,
//       type:BottomNavigationBarType.fixed,
//       backgroundColor:const  Color(0xffB7935F),
    
//       items:const  [
//         BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/quran.png')),label: ''),
//         BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/sebha_blue.png')),label: ''),
//         BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/radio.png')),label: ''),
//         BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/ahdeeth.png')),label: ''),
//         BottomNavigationBarItem(icon:Icon(Icons.settings),label: ''),
         
//       ],
//     );
//   }

//   List<Widget>tabs=[


//   ];
// }
