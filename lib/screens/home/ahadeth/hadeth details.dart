import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/model/hadeth.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName="Hadeth";

  @override
    Widget build(BuildContext context) {

      var hadeth= ModalRoute.of(context)?.settings.arguments as Hadeth;


      return
        Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/homa bg.png"),
                fit: BoxFit.fill)),
            child: Scaffold(backgroundColor: Colors.transparent,
                appBar:
                AppBar(backgroundColor: Colors.transparent,elevation: 0,centerTitle:true,
                  title:

                   
                     
                      
                       Text(hadeth.title,style: TextStyle(color: Colors.black ,
                        fontWeight: FontWeight.bold,fontSize: 30)),
                    ),
                
                body:
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(hadeth.content  ,style: TextStyle(fontSize: 20 , color:Colors.black),textAlign: TextAlign.right ,),
                  ),
                )
                )


        );


    }

  }


