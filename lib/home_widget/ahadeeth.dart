import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamiapp/Colors.dart';
import 'package:islamiapp/model/hadeth_model.dart';

class Ahadeeth extends StatefulWidget {
  Ahadeeth({super.key});

  @override
  State<Ahadeeth> createState() => _AhadeethState();
}

class _AhadeethState extends State<Ahadeeth> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadAhadithFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/ahadeth tab.png',
          height: 219,
        ),
        const Divider(
          thickness: 3,
          color: AppColor.primaryColor,
        ),
        const Text(
          'Ahadith',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'ElMessiri',
              fontWeight: FontWeight.w600),
        ),
        const Divider(
          thickness: 3,
          color: AppColor.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Icon(
                  Icons.star,
                  color: AppColor.primaryColor,
                )),
                Expanded(
                  flex: 3,
                  child: Divider(
                    thickness: 2,
                    color: AppColor.primaryColor,
                  ),
                ),
                Expanded(
                    child: Icon(
                  Icons.star,
                  color: AppColor.primaryColor,
                )),
              ],
            ),
            itemBuilder: (context, index) {
              return Text(
                allAhadeth[index].title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'ElMessiri',
                ),
              );
            },
            itemCount: allAhadeth.length,
          ),
        ),
      ],
    );
  }

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
        setState(() {});
      }
    });
  }
}
