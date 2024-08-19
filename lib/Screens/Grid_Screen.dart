import 'package:flutter/material.dart';

import '../Data/Data_source/data_source.dart';
import '../Widgets/Custom_Card.dart';
import '../Widgets/Custom_text.dart';
class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  var itemNum=DataSource.itemslist;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white60,
      appBar:AppBar(
        backgroundColor:Colors.black,
          title:const Text('PORSCHE',style:TextStyle(
            color: Colors.white,
            fontSize:40,
            fontFamily: 'NotoSans',
          ),),centerTitle:true,

      ),
      body:GridView.builder(itemCount:6,
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,mainAxisSpacing:5,crossAxisSpacing: 5),
        itemBuilder:(context,index){return CustomCard(itemsModel:itemNum[index]);},
      )
    );

  }
}
