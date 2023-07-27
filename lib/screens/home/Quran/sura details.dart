
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/sura%20details%20arguments.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName="suradetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
 List <String> suraLines=[];

  @override
  Widget build(BuildContext context) {

    var arg= ModalRoute.of(context)?.settings.arguments as SuraDetalsArguments;
    if(suraLines.isEmpty) {
      readSuraContent(arg.fileName);
    }

    return
      Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/homa bg.png"), fit: BoxFit.fill)),
        child: Scaffold(backgroundColor: Colors.transparent,
          appBar:
          AppBar(backgroundColor: Colors.transparent,elevation: 0,centerTitle:true,title: Text(arg.suraName,style: TextStyle(color: Colors.black ,
              fontWeight: FontWeight.bold,fontSize: 30)),),
    body: suraLines.isEmpty?
    Center(child: CircularProgressIndicator()):
        ListView.builder(itemBuilder: (context, index) {
          return Text(suraLines[index]);
        }, itemCount: suraLines.length,))


      );


  }

readSuraContent (String fileName) async {
     var suraContent= await rootBundle.loadString("assets/files/quran/$fileName");

     suraLines=suraContent.split("\n");
print(suraLines);
setState(() {

});

}
}

