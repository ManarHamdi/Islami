import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Provider/setting provider.dart';
import '../../utits/app_colors.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);

    return Container(padding: EdgeInsets.only(top: 19),

      child:   Column(children: [
        Text("Select your Mode" , textAlign: TextAlign.center,style: Theme.of(context)!.textTheme.titleMedium,),
        SizedBox(height: 30),

        InkWell(onTap:(){
          provider.currentTheme=ThemeMode.dark;
          provider.notifyListeners();
        } ,child:onLanguageClickStyle(provider.currentTheme==ThemeMode.dark,"Dark") ,
        ),


        SizedBox(height: 8),

        InkWell(onTap: () {
          provider.currentTheme=ThemeMode.light;
          provider.notifyListeners();
        },
          child:    onLanguageClickStyle(provider.currentTheme==ThemeMode.light,"Light"),
        )


      ],),
    );
  }

  onLanguageClickStyle(bool isSelected,String theme) {
    if (isSelected) {
      return
        Text(theme , style: TextStyle(color: AppColors.primaryColor ,fontSize: 24));
    }
    else {
      return
        Text(theme , style: TextStyle(color: AppColors.accentColor ,fontSize: 24));
    }
  }
}