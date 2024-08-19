import 'package:flutter/material.dart';
import 'package:test_1/Data/Data_model/item_model.dart';

import 'Custom_text.dart';
class CustomCard extends StatelessWidget {
  final ItemsModel?itemsModel;
  const CustomCard({super.key,this.itemsModel,});

  @override
  Widget build(BuildContext context) {
    return Container(

        height: 200,
        width: 200,
        margin:EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        clipBehavior:Clip.antiAlias,
        decoration:BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.amber,
            width: 4,
          ),
        ),
        child:Column(
          children: [
            Image.asset('${itemsModel?.image}'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  CustomText(text: "${itemsModel?.name}",),
                  CustomText(text: "${itemsModel?.price}",),
                ],

              ),
            ),
            SizedBox(height:10,),
            CustomText(text: "${itemsModel?.rating}",),
          ],
        )
    );
  }
}
