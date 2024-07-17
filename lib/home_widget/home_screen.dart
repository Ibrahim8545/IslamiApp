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
        
          appBar: AppBar(
          
            title: const Text(
              'Islami app',
            ),
          
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/ahdeeth.png')),
                  label: 'Ahadeth'),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
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
