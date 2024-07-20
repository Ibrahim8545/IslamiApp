import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/model/hadeth_model.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName ='hadethDetails';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    var pro =Provider.of<MyProvider>(context);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage(
                      pro.appTheme==ThemeMode.light?
                      'assets/images/main.png':
                      'assets/images/dark mian bg.png'
                      ),)
      ),
      child: Scaffold(

        appBar: AppBar(
       
          title:Text(
             model.title,

             ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(18.0),
          child: Card(
            color:pro.appTheme==ThemeMode.light?
             Colors.white
             :AppColor.primaryDark
             ,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(
                    model.content[index],
                    textDirection: TextDirection.rtl,
                    style:Theme.of(context).textTheme.bodySmall
                    );
                },
                itemCount: model.content.length,
                ),
            ),
          ),
        ) ,
      
      ),
    );
  }
}