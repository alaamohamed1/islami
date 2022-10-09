import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami/Tabs/quran/sura_name_item.dart';
import 'package:islami/sura_Details/sura_Details_item.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

class suraDetails extends StatefulWidget {
  static const String routName = 'suraDetails';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var SuraDeatailsArgs;

    SuraDeatailsArgs =
        ModalRoute.of(context)?.settings.arguments as SuraNameArgs;
    var pro = Provider.of<appProvider>(context);
    if (verses.isEmpty) {
      loadFile(SuraDeatailsArgs.index);
    }

    return Stack(children: [
      Image.asset(
        pro.ChangeAppBackground(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '${SuraDeatailsArgs.SuraName}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                separatorBuilder: (_, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    color: Theme.of(context).primaryColor,
                    height: 1,
                  );
                },
                itemBuilder: (_, index) {
                  return suraDetailsItem(verses[index].toString());
                },
                itemCount: verses.length,
              ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/file/${index + 1}.txt');
    // print(content);
    List<String> ayat = content.split('\n');
    //ayat.add(content);
    verses = ayat;
    setState(() {});
  }
}

class SuraNameArgs {
  String SuraName;
  int index;

  SuraNameArgs(this.SuraName, this.index);
}
