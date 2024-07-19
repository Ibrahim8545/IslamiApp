import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/details_screens/hadeth_details.dart';
import 'package:islamiapp/model/hadeth_model.dart';
import 'package:islamiapp/providers/hadeth_provider.dart';
import 'package:provider/provider.dart';

class Ahadeeth extends StatefulWidget {
  Ahadeeth({super.key});

  @override
  State<Ahadeeth> createState() => _AhadeethState();
}

class _AhadeethState extends State<Ahadeeth> {
  

  @override
  Widget build(BuildContext context) {
    // if (allAhadeth.isEmpty) {
    //   loadAhadithFile();
    // }
    return ChangeNotifierProvider(
      create: (context) => HadethScreenProvider()..loadAhadithFile(),
      builder: (context, child)
       {
        var pro=Provider.of<HadethScreenProvider>(context);
        return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/ahadeth tab.png',
            height: 219,
          ),
           Divider(),
      Text(
            'ahadeth'.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge
          ),
          const Divider(
            
            
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Icon(
                    Icons.star,
               
                  )),
                  Expanded(
                    flex: 3,
                    child: Divider(
                      thickness: 2,
                      
                    ),
                  ),
                  Expanded(
                      child: Icon(
                    Icons.star,
                   
                  )),
                ],
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      HadethDetailsScreen.routeName,
                    arguments: pro.allAhadeth[index]
                    );
                  },
                  child: Text(
                    pro.allAhadeth[index].title,
                    textAlign: TextAlign.center,
                    style:Theme.of(context).textTheme.bodyMedium
                  ),
                );
              },
              itemCount: pro.allAhadeth.length,
            ),
          ),
        ],
      );
        
      },
    
    );
  }

 }
