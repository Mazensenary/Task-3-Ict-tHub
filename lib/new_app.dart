import 'package:flutter/material.dart';
import 'package:test_1/Screens/new_homescreen.dart';
import 'Screens/Nav_Screen.dart';
import 'Screens/Slider.dart';

class NewAPP extends StatelessWidget {
  const NewAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner: false,
      home: HomeNavBar(),
    );
  }
}
