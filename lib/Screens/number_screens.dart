import 'package:flutter/material.dart';
class NumberScreens extends StatelessWidget {
  final String path;
  const NumberScreens({super.key,required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey,
      appBar:AppBar(
        backgroundColor:Colors.green,
        title:Text('cars'),centerTitle:true,
      ),
      body: Center(
        child:Image.asset(path),

      )

    );
  }
}
