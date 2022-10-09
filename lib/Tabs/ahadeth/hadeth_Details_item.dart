 import 'package:flutter/material.dart';
import 'package:islami/Tabs/ahadeth/ahadeth_Details.dart';
 import 'package:islami/sura_Details/sura_details.dart';


class hadethDetailsItem extends StatelessWidget {
   String text;

   hadethDetailsItem(this.text);
 
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(14.0),
       child: Text(textAlign : TextAlign.center,
         '$text',style: Theme.of(context).textTheme.headline2 ,),
     );
   }
 }
 