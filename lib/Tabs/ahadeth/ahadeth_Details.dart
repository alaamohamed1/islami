import 'package:flutter/material.dart';
import 'package:islami/Tabs/ahadeth/Ahadeth.dart';
import 'package:islami/Tabs/ahadeth/hadeth_Details_item.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';
import 'hadeth_name_item.dart';

class hadethDetails extends StatelessWidget {
static const String routName='HadethDetails';

  @override
  Widget build(BuildContext context) {

    HadethModel model=ModalRoute.of(context)!.settings.arguments as HadethModel;
    var pro=Provider.of<appProvider>(context);
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
            '${model.tilte}',
            style: Theme.of(context).textTheme.headline1,
          ),

        ),
        body: ListView.separated(itemBuilder: (c,index){
          return hadethDetailsItem(model.content[index].toString());
        },

    separatorBuilder: (_, index) {
    return Container(
    margin: EdgeInsets.symmetric(horizontal: 50),
    color: Theme.of(context).primaryColor,
    height: 1,
    );},

            itemCount: model.content.length),
      )
    ]);
  }
}
