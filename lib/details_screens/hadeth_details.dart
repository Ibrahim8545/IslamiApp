import 'package:flutter/material.dart';
import 'package:islamiapp/model/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName ='hadethDetails';
  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration:const  BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/main.png'))
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
            color: Colors.white,
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