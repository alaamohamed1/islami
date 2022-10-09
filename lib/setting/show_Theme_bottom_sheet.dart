import 'package:flutter/material.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:provider/provider.dart';

class showThemeBottonsheet extends StatefulWidget {
  const showThemeBottonsheet({Key? key}) : super(key: key);

  @override
  State<showThemeBottonsheet> createState() => _showThemeBottonsheetState();
}

class _showThemeBottonsheetState extends State<showThemeBottonsheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<appProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
              onTap: (){
                provider.changAppTheme(ThemeMode.light);
                Navigator.pop(context);


              },
              child: selectedlanguge('Light',true)),
          InkWell(
              onTap: (){
                provider.changAppTheme(ThemeMode.dark);

                Navigator.pop(context);



              },
              child: selectedlanguge('Dark',false)),


        ],
      ),
    );
  }

  Widget selectedlanguge(String text,bool selected){

    if(selected){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(text, style: Theme.of(context).textTheme.headline2!.copyWith(
              color: Theme.of(context).primaryColor
          )),
          Icon(Icons.check,size: 25,)
        ],
      );
    }else{
      return Row(
        children: [
          Text(text,),
          Icon(Icons.check,size: 25,)
        ],
      );
    }
  }

}
