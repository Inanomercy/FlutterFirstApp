import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
//A widget w/ no changes of data or pure display

@override
Widget build(BuildContext context) {
  //describe what to show
   return MaterialApp(
    home: Scaffold(appBar: AppBar(title: Text('My First App')),
    body:Center(
    child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
      Icon(Icons.star, size: 40),
      SizedBox(height: 30,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.thumb_down),
          Icon(Icons.thumb_up),
        ],
      ),
      SizedBox(height: 10),
      Text('Hello Flutter'),

     ],     

    ),
  )
  )
  );

  }
}