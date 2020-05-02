import 'package:flutter/material.dart';
import 'dart:math';  

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
@override
Widget build(BuildContext context){
return MaterialApp(
  home:DingCard(),
  );
}
}
class DingCard extends StatefulWidget{
@override
_DingCardState createState() => _DingCardState(); 
}

class _DingCardState extends State<DingCard>{
int level = 2;
int i,j;
bool isPrime;
int gjr ;   
@override
Widget build(BuildContext context){
return Scaffold(
  backgroundColor: Colors.grey[900],
  appBar: AppBar(
title: Text('素数生成器'),
centerTitle:true,
backgroundColor: Colors.grey[850],
elevation: 0.0,
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: (){
setState((){
  for(gjr=level+1;gjr<10000;gjr++) {
    isPrime = true;
  for (i=2;i<=sqrt(gjr);i++)
    {if(gjr%i==0) isPrime=false;}
     if(isPrime) {level=gjr;break;}
  }
  
    


   });
},
child:Icon(Icons.add),
backgroundColor: Colors.grey[850],),
body:Padding(padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
child:Column(
crossAxisAlignment:CrossAxisAlignment.start,
children:[
/* Center(
  child:CircleAvatar(
  backgroundImage:AssetImage('images/.jpg'),
  radius:40,
  ),
), */
/* Divider(height: 60,color: Colors.green,),
 */
/* Text(
'WRITER',
style: TextStyle(
  color:Colors.grey,letterSpacing:2),
), */
SizedBox(height: 10),
Text(
   '屠龙宝数按+即送',
    style:TextStyle(
    color: Colors.white,
    letterSpacing: 2,
    fontSize: 28,
    fontWeight: FontWeight.bold,
   ),
),
SizedBox(height: 30),
Text(
  'PRIME NUMBER',
  style:TextStyle(color: Colors.grey,letterSpacing:2),
),
SizedBox(height: 10),
Container(
 child: Text(
  '$level',
  style:TextStyle(
    fontSize: 28,
    color:Colors.black,
    letterSpacing: 2,
    fontWeight: FontWeight.bold, 
),
),
color: Colors.yellowAccent,
width: double.infinity,
),

SizedBox(height: 30),
Row(children: <Widget>[
Icon(
    Icons.account_circle,
    color:Colors.greenAccent, 
),
SizedBox(width: 10),
Text(
'UI赞助：',
style:TextStyle(
  color: Colors.grey,
  fontSize: 18,
  letterSpacing: 1
),
),
Text(
            'www.pornhub.com',
            style: TextStyle(
              color:Colors.white38,
              decoration: TextDecoration.lineThrough,
              decorationColor: const Color(0xff000000),
              fontSize: 25.0,
            ),
),
],
),
],



),
),
);
}
}