import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class REudableCard extends StatelessWidget {

REudableCard({this.cardChild,this.colour});
final Widget cardChild;
final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
class DesignMF extends StatelessWidget {

  DesignMF({@required this.gender,@required this.sort});
  final String gender;
  final Icon sort;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
      sort
      ,SizedBox(height: 15,)
      ,Text('$gender',style: TextStyle(color: Colors.white,fontSize: 20,),)
    ],);
  }
}