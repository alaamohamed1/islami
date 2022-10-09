import 'package:flutter/material.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:provider/provider.dart';

class showLangueBottonsheet extends StatefulWidget {
  const showLangueBottonsheet({Key? key}) : super(key: key);

  @override
  State<showLangueBottonsheet> createState() => _showLangueBottonsheetState();
}

class _showLangueBottonsheetState extends State<showLangueBottonsheet> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<appProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
              onTap: (){
                provider.changAppLanguage('en');
                Navigator.pop(context);

              },
              child: selectedlanguge('English',true)),
          InkWell(
              onTap: (){
                provider.changAppLanguage('ar');
                Navigator.pop(context);

              },
              child: selectedlanguge('العربيه',false)),


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
