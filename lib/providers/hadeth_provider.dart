import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/model/hadeth_model.dart';

class HadethScreenProvider extends ChangeNotifier
{
  List<HadethModel> allAhadeth = [];
   loadAhadithFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split('#');

      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];

        List<String> hadethLines = hadeth.trim().split('\n');

        String hadethTitle = hadethLines[0];

        hadethLines.removeAt(0);

        List<String> hadethContent = hadethLines;

        HadethModel hadethModel = HadethModel(hadethTitle, hadethContent);
        allAhadeth.add(hadethModel);
        notifyListeners();
     
      }
    });
  }

}