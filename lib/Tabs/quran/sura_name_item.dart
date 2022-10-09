import 'package:flutter/material.dart';
import 'package:islami/sura_Details/sura_details.dart';

class suraNameItem extends StatelessWidget {
  String text;
  int index;

  suraNameItem(this.text, this.index);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, suraDetails.routName,
              arguments: SuraNameArgs(text, index));
        },
        child: Text(
          textAlign: TextAlign.center,
          '$text',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
