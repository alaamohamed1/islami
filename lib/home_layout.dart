
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:islami/setting/settings.dart';
import 'package:provider/provider.dart';




import 'Tabs/ahadeth/Ahadeth.dart';
import 'Tabs/Radio.dart';
import 'Tabs/Tasbeh.dart';
import 'Tabs/quran/quran.dart';class home extends StatefulWidget {
  static const String routeName='home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<appProvider>(context);
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            pro.ChangeAppBackground() ,

          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),

          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              centerTitle: true,
              title: Text(

                AppLocalizations.of(context)!.islamititle,

                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index){
                currentIndex=index;
                setState((){


            });
              },
              currentIndex: currentIndex ,

              items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png')),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png')),label: 'Tasbeh'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png')),label: 'Radio'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),label: 'Ahadeth'),
              BottomNavigationBarItem(icon: Icon(Icons.settings

    ),label: 'Setting'),




            ],),
            body: taps[ currentIndex] ,





          )

        ],

      ),

    );

  }
  List<Widget> taps=[
    QuraanScreen(),TasbehScreen(),RadioScreen(),AhadethScreen(),
    settingTabs(),
  ];
}
