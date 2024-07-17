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
        
        appBar: AppBar(

          title: Text(
            model.name,
            
            ),
          centerTitle: true,
        ),
        body: Container(
          padding:const EdgeInsets.all(18),
          margin:const  EdgeInsets.all(12),
          child: Card(
             color: Colors.white,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            child: ListView.separated(
              separatorBuilder: (context, index)=>const Divider(thickness: 2,),
              itemBuilder:(context, index) {
                return Text(
                  verses[index],
                  style: Theme.of(context).textTheme.bodySmall,
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