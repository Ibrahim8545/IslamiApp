import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/model/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName='screen';
   SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
   
    if(verses.isEmpty)
    {
       loadSuraFile(model.index);
    }
    return Container(
      
      decoration:const  BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main.png'))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
           backgroundColor: Colors.transparent,
          title: Text(
            model.name,
            style:const  TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri'
            ),
            ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(18),
          margin: EdgeInsets.all(12),
          child: Card(
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            child: ListView.separated(
              separatorBuilder: (context, index)=>Divider(thickness: 2,color: AppColor.primaryColor,),
              itemBuilder:(context, index) {
                return Text(
                  verses[index],
                  style:const  TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'ElMessiri',
                  wordSpacing: 4
                ),
                textAlign: TextAlign.center,
                  );
                
              },
              itemCount: verses.length,
              ),
          ),
        ),
      
      ),
    );
  }

  loadSuraFile(int index)async
  {
    String sura=  
    await rootBundle.loadString('assets/files/${index+1}.txt');
   
   List<String>suraLines=sura.split('\n');
   verses=suraLines;
   setState(() {
     
   });
  }
}