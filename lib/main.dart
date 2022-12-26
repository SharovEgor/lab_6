import 'package:flutter/material.dart';
import 'dart:math';

class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  createState() => MyBodyState();
}

class MyBodyState extends State<MyBody> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      double? result = 2;

      for (int i = 1; i< index; i++){
        result = pow(2,i+1) as double?;
      }
      if (index == 0){
        result = 1;
      }

      return ListTile(title: Center(child: Text('2 в степени $index: $result')));
    });
  }
}



void main() =>  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Center(child: MyBody(),))
    )
);