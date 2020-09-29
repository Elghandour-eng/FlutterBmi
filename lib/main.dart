import 'dart:math';

import 'package:bmicalculater/brain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Design.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'M_F_colors.dart';
import 'resultpage.dart';
import 'brain.dart';

void main() {
  runApp(BMI());
}

class BMI extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF1D1E33),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      initialRoute: '/',
      routes: {'/': (context) => InputPage(),
        '/Second':(context)=>ResultPage(),
      }
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int heigh = 180;
  int weigh = 60;
  int age = 10;
  double bmi;
  String Calculate(){
    bmi =weigh/pow(heigh/100, 2);
    return bmi.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULTER'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.Female;
                    });
                  },
                  child: REudableCard(
                      colour:
                          selectedGender == Gender.Female ? active : inactive,
                      cardChild: DesignMF(
                        gender: 'FEMALE',
                        sort: Icon(
                          FontAwesomeIcons.venus,
                          color: Colors.white,
                          size: 80,
                        ),
                      )),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                    child: REudableCard(
                      colour: selectedGender == Gender.Male ? active : inactive,
                      cardChild: DesignMF(
                        gender: 'MALE',
                        sort: Icon(
                          FontAwesomeIcons.mars,
                          color: Colors.white,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: REudableCard(
                colour: active,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                        child: Text(
                      'HEIGHT',
                      style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          heigh.toString(),
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Text('cm',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8D8E98)))
                      ],
                    ),
                    Slider(
                        value: heigh.toDouble(),
                        min: 100,
                        max: 250,
                        activeColor: Colors.pink,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double eltol) {
                          setState(() {
                            heigh = eltol.round();
                          });
                        })
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: REudableCard(
                    colour: active,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                        ),
                        Text(
                          weigh.toString()
                          ,style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '1',
                              onPressed: () {
                                setState(() {
                                  weigh++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: '2',
                              onPressed: () {
                                setState(() {
                                  weigh--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: REudableCard(
                    colour: active,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style:
                          TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '3',
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: '4',
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              backgroundColor: Color(0xFF4C4F5E),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    Brain b =Brain(h: heigh,w: weigh);
                    Navigator.
                  push(context, MaterialPageRoute(builder:(context)=> ResultPage(a: b.N(), b: b.Cal(), c: b.B())));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFEB1555),
                    ),
                    child: Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
