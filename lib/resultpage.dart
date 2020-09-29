import 'package:bmicalculater/brain.dart';
import 'package:flutter/cupertino.dart';

import 'main.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage ({@required this. a ,@required this.b ,@required this.c});
  final String a;
  final String b;
  final String c;

  @override
  Widget build(BuildContext context) {

    return
     Scaffold(

      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(title: Center(child: Center(child: Text('BMI CALCULATOR')),),),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Your Result',style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
          Expanded(
              child: Container(padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10),
              ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                  Center(child: Text(a,style: TextStyle(color: Colors.green,fontSize: 30),)),
                  SizedBox(height: 40,),
                  Center(child:  Text(b,style: TextStyle(color: Colors.white,fontSize: 90,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 30,)
                  ,Center(child: Text(c,style: TextStyle(color: Colors.white,fontSize: 25),))
                ],

          ),
              )),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector( onTap: (){Navigator.pop(context,);},
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xFFEB1555)),
                    height: 80,
                    margin: EdgeInsets.only(top: 10),
                    child: Center(child: Text('RE-Calculate',style: TextStyle(color: Colors.white,fontSize: 35),)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
