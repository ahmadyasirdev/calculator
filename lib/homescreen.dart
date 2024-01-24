import 'dart:ffi';

import 'package:calculator/componts/mybutton.dart';
import 'package:calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var userIput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    print('rebulid');
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 , ),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment : Alignment.bottomRight,
                          child: Text(userIput.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),),
                      SizedBox(height: 15),
                      Text(answer.toString(),style: TextStyle(fontSize: 30,color: Colors.white),),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(title:'Ac',Onpress: (){
                         userIput += 'AC';
                         setState(() {

                         });

                        },),
                        MyButton(title: '+/_',Onpress: (){
                          userIput += '+/_';
                          setState(() {

                          });
                        },),
                        MyButton(title: '%',Onpress: (){
                          userIput += '%';
                          setState(() {

                          });

                        },),
                        MyButton(title: '/',Onpress: (){
                          userIput += '/';
                          setState(() {

                          });

                        },color: Color(0xffffa00a),),
                        // MyButton(title: '/',color: Color(0xffffa00a),),
                      ],

                    ),
                    Row(
                      children: [
                        MyButton(title:'7',Onpress: (){
                          userIput += '7';
                          setState(() {

                          });

                          //  print('tab');
                        },),
                        MyButton(title: '8',Onpress: (){
                          userIput += '8';
                          setState(() {

                          });

                        },),
                        MyButton(title: '0',Onpress: (){
                          userIput += '0';
                          setState(() {

                          });

                        },),
                        MyButton(title: 'X',Onpress: (){
                          userIput += 'X';
                          setState(() {

                          });

                        },color: Color(0xffffa00a),),
                        // MyButton(title: '/',color: Color(0xffffa00a),),
                      ],

                    ),
                    Row(
                      children: [
                        MyButton(title:'4',Onpress: (){
                          userIput += '4';
                          setState(() {

                          });

                          // print('tab');
                        },),
                        MyButton(title: '5',Onpress: (){
                          userIput += '5';
                          setState(() {

                          });

                        },),
                        MyButton(title: '6',Onpress: (){
                          userIput += '6';
                          setState(() {

                          });

                        },),
                        MyButton(title: '_',Onpress: (){
                          userIput += '_';
                          setState(() {

                          });

                        },color: Color(0xffffa00a),),
                        // MyButton(title: '/',color: Color(0xffffa00a),),
                      ],

                    ),
                    Row(
                      children: [
                        MyButton(title:'1',Onpress: (){
                          userIput += '1';
                          setState(() {

                          });

                          // print('tab');
                        },),
                        MyButton(title: '2',Onpress: (){
                          userIput += '2';
                          setState(() {

                          });

                        },),
                        MyButton(title: '3',Onpress: (){
                          userIput += '3';
                          setState(() {

                          });

                        },),
                        MyButton(title: 'DEL',Onpress: (){
                          userIput = userIput.substring(0,userIput.length-1);
                          setState(() {

                          });

                        },color: Color(0xffffa00a),),
                        // MyButton(title: '/',color: Color(0xffffa00a),),
                      ],

                    ),
                    Row(
                      children: [
                        MyButton(title:'Ac',Onpress: (){
                          userIput = '';
                          answer = '';
                          setState(() {

                          });

                        },),
                        MyButton(title: '.',Onpress: (){
                          userIput += '.';
                          setState(() {

                          });

                        },),
                        MyButton(title: '=',Onpress: (){
                          equalPress();
                          setState(() {

                          });

                        },),
                        MyButton(title: '%',Onpress: (){},color: Color(0xffffa00a),),
                        // MyButton(title: '/',color: Color(0xffffa00a),),
                      ],

                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void equalPress(){
    String finalUserInput = userIput;
    finalUserInput = userIput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(userIput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL,contextModel);
    answer = eval.toString();
  }

  }



















  
