import 'package:flutter/material.dart';
import 'package:test_1/Screens/Grid_Screen.dart';
import 'package:test_1/Screens/Slider.dart';
import 'package:test_1/Screens/calc_screen.dart';
import 'package:test_1/Screens/new_homescreen.dart';
class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  List<Widget>screens=<Widget>[
    const Scaffold(
      body:const Center(
        child: Text("home"),
      ),
    ),
    const ImageSlider(),
    HomeScreen(),
    const GridScreen(),
    CalculatorScreen(),
  ];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:screens[currentIndex],
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor:Colors.amber,
        onTap: (int index){
          setState(() {
            currentIndex=index;
          });
        },
        currentIndex:currentIndex,
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:'home',),
            BottomNavigationBarItem(icon: Icon(Icons.list),label:'List',),
            BottomNavigationBarItem(icon: Icon(Icons.add),label:'counter',),
            BottomNavigationBarItem(icon: Icon(Icons.car_repair_outlined),label:'Cars',),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined),label:'calculator',),





          ],),
    );
  }
}
