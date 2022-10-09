import 'package:flutter/material.dart';
import 'package:islami/Tabs/ahadeth/ahadeth_Details.dart';
import 'package:islami/home_layout.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:islami/sura_Details/sura_details.dart';
import 'package:islami/thems.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';




void main() {
  runApp( ChangeNotifierProvider(
      create: (context)=>appProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override


   Widget build(BuildContext context) {
    var provider=Provider.of<appProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar')
      ],
      locale: Locale(provider.AppLanguge),

      initialRoute: home.routeName   ,
      routes: {
        home.routeName:(c)=>home(),
        suraDetails.routName:(c)=>suraDetails(),
       hadethDetails.routName:(c)=>hadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,



    );
  }
}

