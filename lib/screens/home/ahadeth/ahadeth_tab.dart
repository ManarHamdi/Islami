import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/screens/home/ahadeth/hadeth%20details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../../../model/hadeth.dart';
import '../../../utits/app_colors.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
List <Hadeth> ahadeth =[];

  @override
  Widget build(BuildContext context) {
    readAhadethFile();
    return Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, children: [


          Expanded(flex: 3,
              child: Image.asset("assets/images/ahadeth tab logo.png")),
          SizedBox(height: 10),
          Divider(color: AppColors.primaryColor, height: 3, thickness: 3),
          SizedBox(height: 5),
          Text(AppLocalizations.of(context)!.ahadeth,textAlign: TextAlign.center,

              style: TextStyle(color: Colors.black, fontSize: 23,
                fontWeight: FontWeight.w400,)),
          SizedBox(height: 5),
          Divider(color: AppColors.primaryColor, height: 3, thickness: 3)
               , Expanded(flex: 7,child: ListView.builder
                  (itemBuilder: (context, index) { return buildHadethNameItem(context,index);}
                  ,itemCount: ahadeth.length,  ))
          //
          //     ], ),
          //
          //   );
          // }
          //
        ]));
  }

  readAhadethFile() async {
    String ahadethConten = await rootBundle.loadString(
        "assets/files/ahadeth/ahadeth .txt");
    List<String> hadeth = ahadethConten.split("#");

    for (int i = 0; i < hadeth.length; i++) {
      List<String> singleHadethLine = hadeth[i].trim().split("\n");

      String title = singleHadethLine.removeAt(0);

      String content = singleHadethLine.join("\n");

      ahadeth.add(Hadeth(title: title, content: content));
    }
    setState(() {

    });
  }

Widget buildHadethNameItem (BuildContext context,int index){
  return
    InkWell(onTap:(){ Navigator.pushNamed(context ,
      HadethDetails.routeName,arguments: ahadeth[index] );}
,child:
 Text(style: TextStyle(fontSize: 25),textAlign: TextAlign.center,ahadeth[index].title));
}
}
