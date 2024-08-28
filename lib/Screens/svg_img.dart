import 'package:flutter/material.dart';
class SvgImg extends StatelessWidget {
  const SvgImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Center(
            child:Container(
              height: 150,
              width:150,
              color:Colors.purple,
            ),
          )
        ],
      )),
    );
  }
}
