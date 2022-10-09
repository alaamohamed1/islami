import 'package:flutter/material.dart';
import 'package:islami/setting/show_Theme_bottom_sheet.dart';
import 'package:islami/setting/show_languge_bottom_sheet.dart';

class settingTabs extends StatefulWidget {
  const settingTabs({Key? key}) : super(key: key);

  @override
  State<settingTabs> createState() => _settingTabsState();
}

class _settingTabsState extends State<settingTabs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Language',style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              showLangugeBootmSheet();

            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:  Colors.white,
                border: Border.all(color:  Theme.of(context).primaryColor),
              ),
              child: Text('English'),

            ),
          ),
          Text('Theme',style: Theme.of(context).textTheme.headline1,),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
              showThemeBootmSheet();

            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:  Colors.white,
                border: Border.all(color:  Theme.of(context).primaryColor),
              ),
              child: Text('Dark',style: Theme.of(context).textTheme.headline2,),

            ),
          )
        ],



      ),
    )
    ;
  }
  void showThemeBootmSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return showThemeBottonsheet();
    });
  }

  void showLangugeBootmSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return showLangueBottonsheet();
    });
  }
}
