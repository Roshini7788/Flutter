import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade100,
    appBar: AppBar(
      title: Text('MY First App'),
    ),
    body: Center(
      child: Text("hello Flutter",
          style: TextStyle(
             fontSize: 30,
             fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
          
        ),
       ),
      ),
      ),
      ),
    );
}