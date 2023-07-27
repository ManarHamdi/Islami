
import 'package:flutter/material.dart';
import 'package:islami/Provider/setting%20provider.dart';
import 'package:islami/screens/Setting/setting%20screen.dart';
import 'package:islami/screens/home/Quran/sura%20details.dart';
import 'package:islami/screens/home/ahadeth/hadeth%20details.dart';
import 'package:islami/screens/home/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/screens/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/utits/app%20theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp( ChangeNotifierProvider(create :(_)=>SettingProvider() ,child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingProvider provider;

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return MaterialApp(
        themeMode: provider.currentTheme,
        darkTheme: AppTheme.darkTheme,
        theme: AppTheme.lightTheme,

      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        SuraDetails.routeName:(_)=>SuraDetails(),
        HadethDetails.routeName:(_)=>HadethDetails(),
        SettingScreen.routeName:(_)=>SettingScreen(),
        SebhaTab.routName:(_)=>SebhaTab()
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale:  Locale(provider.currentLocale),

    );



  }

  void initialSharedPreference()async{

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme=prefs.getString('currentTheme')??'light';
    String language =prefs.getString('currentLocal')??'en';
    provider.changeCurrentLocal(language);
    if(theme=='light'){
      provider.changeCurrentTheme(ThemeMode.light);
    }else{
      provider.changeCurrentTheme(ThemeMode.dark);
    }
  }
}