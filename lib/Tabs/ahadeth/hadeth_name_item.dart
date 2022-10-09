import 'package:flutter/material.dart';
import 'package:islami/Tabs/ahadeth/ahadeth_Details.dart';

import 'Ahadeth.dart';


class hadethNameItem extends StatelessWidget {
  String text;
  HadethModel hadethModel;

  hadethNameItem(this.text,this.hadethModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, hadethDetails.routName,
          arguments:  hadethModel);

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
