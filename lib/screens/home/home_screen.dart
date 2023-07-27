import 'package:flutter/material.dart';
import 'package:islami/screens/Setting/setting%20screen.dart';
import 'package:islami/screens/home/Quran/quran_tab.dart';
import 'package:islami/screens/home/ahadeth/ahadeth_tab.dart';
import 'package:islami/screens/home/radio/radio_tab.dart';
import 'package:islami/screens/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/utits/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget{
  static const String routeName="Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab=0;

  List <Widget> tabs= [
    RadioTab(),
    SebhaTab(),
    AhadethTab(),
  QuranTab(),
    SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return

      Container(decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/homa bg.png"),
          fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(title:Text(AppLocalizations.of(context)!.islami) ),
          backgroundColor: Colors.transparent,

          body: tabs[currentTab],
          bottomNavigationBar:

          Theme(data: Theme.of(context).copyWith(canvasColor: AppColors.primaryColor),
            child: BottomNavigationBar(selectedFontSize: 12,selectedItemColor: Colors.black ,iconSize: 36,
                currentIndex: currentTab,
                onTap: (index) {
                  currentTab=index;
                  setState((){});
                } ,
                items: [
                  BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/radio_icon.png")),label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/icon_sebha.png")),label: AppLocalizations.of(context)!.tasbeh),
                  BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/Path 1.png")),label: AppLocalizations.of(context)!.ahadeth),
                  BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/Quraan_icon.png")),label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(icon: const ImageIcon(AssetImage("assets/images/setting icon.png")),label: AppLocalizations.of(context)!.setting)

                ]),
          ),


      ) ,);

  }
}

