import 'package:flutter/material.dart';
import 'package:islamiapp/Colors.dart';


import 'package:islamiapp/model/sura_model.dart';
import 'package:islamiapp/providers/my_providers.dart';
import 'package:islamiapp/providers/sura_details_provider.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'screen';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadSuraFile(model.index),
      builder: (context, child) {
        var pro = Provider.of<SuraDetailsProvider>(context);
         var protheme = Provider.of<MyProvider>(context);
        //  if(pro.verses.isEmpty)
        //   {
        //      pro.loadSuraFile(model.index);
        //   }
        return Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(
                    image: AssetImage(
                      protheme.appTheme==ThemeMode.light?
                      'assets/images/main.png':
                      'assets/images/dark mian bg.png'
                      ))),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                model.name,
              ),
              centerTitle: true,
            ),
            body: Container(
              padding: const EdgeInsets.all(18),
              margin: const EdgeInsets.all(12),
              child: Card(
                color: protheme.appTheme==ThemeMode.light?
             Colors.white
             :AppColor.primaryDark,
                shape:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 2,
                  ),
                  itemBuilder: (context, index) {
                    return Text(
                      pro.verses[index],
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    );
                  },
                  itemCount: pro.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
