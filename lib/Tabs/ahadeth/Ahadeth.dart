import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'hadeth_name_item.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethModel> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) {
      loadHadethfile();
    }
    return Column(
      children: [
        Image.asset('assets/images/hadeth_logo.png'),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(

            AppLocalizations.of(context)!.ahadeth,


            style: Theme.of(context).textTheme.headline1),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: allHadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (c, index) {
                    return hadethNameItem(allHadeth[index].tilte,allHadeth[index]);
                  },
                  separatorBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      color: Theme.of(context).primaryColor,
                      height: 1,
                    );
                  },
                  itemCount: allHadeth.length),
        )
      ],
    );
  }

  void loadHadethfile() async {
    String content = await rootBundle.loadString('assets/file/ahadeeth.txt');
    List<String> allhadethcontent = content.trim().split('#\r\n');
    for (int i = 0; i < allhadethcontent.length; i++) {
      String hadeth1 = allhadethcontent[i];
      List<String> lines = hadeth1.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      HadethModel hadethModel = HadethModel(title, lines);
      allHadeth.add(hadethModel);
    }
    setState(() {});
  }
}

class HadethModel {
  String tilte;
  List<String> content;

  HadethModel(this.tilte, this.content);
}
