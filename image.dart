,import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        appBar: AppBar(
          title: const Text('MY First App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSZ9CnwHlkQtxjsZUcMbif4GI1koaDvgEK74Bw1PLGuw&s=10",
              
                width: 150,
                height: 150,
                ),
               SizedBox(height: 40),
               Text(
                "Hello Flutter",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
            
          
          ]
        ),
      ),
    ),
  ),
    );