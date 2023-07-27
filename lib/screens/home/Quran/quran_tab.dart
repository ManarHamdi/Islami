
import 'package:flutter/material.dart';
import 'package:islami/model/sura%20details%20arguments.dart';
import 'package:islami/screens/home/Quran/sura%20details.dart';
import 'package:islami/utits/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatelessWidget{

  List <String> suraNames =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: [


        Expanded(flex: 3,child: Image.asset("assets/images/suraa.png")),
        SizedBox(height: 10),
        Divider(color: AppColors.primaryColor,height: 3,thickness: 3),
        SizedBox(height: 5),
        Text(AppLocalizations.of(context)!.suraName,textAlign: TextAlign.center,style: Theme.of(context)!.textTheme.bodyLarge,),
        SizedBox(height: 5),
        Divider(color: AppColors.primaryColor,height: 3,thickness: 3),
        
        Expanded(flex: 7,child: ListView.builder
          (itemBuilder: (context, index) { return buildSuraNameItem(context,index);},itemCount: suraNames.length,  ))
        
      ], ),
      
    );
  }
Widget buildSuraNameItem (BuildContext context,int index){
    return

      InkWell(onTap:(){ Navigator.pushNamed(context , SuraDetails.routeName,arguments: SuraDetalsArguments(fileName: "${index+1}.txt", suraName:suraNames[index] ) );}
      ,
          child: Text(style: TextStyle(fontSize: 25),textAlign: TextAlign.center,suraNames[index]));
}
}