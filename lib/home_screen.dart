import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset('assets/images/main.png'),
        
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Islami app',
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),
            ),
            centerTitle: true,
          ),
        ),
      ],
    );
  }
}
