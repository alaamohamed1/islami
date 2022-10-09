import 'package:flutter/material.dart';

class appProvider extends ChangeNotifier{
  String AppLanguge='En';
  ThemeMode themeMode=ThemeMode.light;


  void changAppLanguage(String langugeCode){
    AppLanguge=langugeCode;
    notifyListeners();
  }
  void changAppTheme(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }

  String ChangeAppBackground(){

     return themeMode==ThemeMode.light?

    'assets/images/background.png':
    'assets/images/background_dark.png';

  }
}