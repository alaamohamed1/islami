 import 'package:flutter/material.dart';
 import 'package:islami/sura_Details/sura_details.dart';


class suraDetailsItem extends StatelessWidget {
   String text;

   suraDetailsItem(this.text);
 
   @override
   Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text(textAlign : TextAlign.center,
         '$text',style: Theme.of(context).textTheme.headline2 ,),
     );
   }
 }
 