import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int number=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold
      (
        appBar:AppBar(backgroundColor:Colors.black,
      title:Text('Task 1',style:TextStyle
        (fontSize: 70,color: Colors.white,)

      ),centerTitle:true,
      ),
        backgroundColor:Colors.grey,body:

    Column
      (mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.center,
      children: [ SizedBox(height:100,),
        Row(mainAxisAlignment: MainAxisAlignment.center,children: [  Text("Counter=$number",style: TextStyle(fontSize: 70,color: Colors.amber,)),],),SizedBox(width: 100,height: 100,),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor:Colors.white,),onPressed: (){ setState(() {

          number++; print("button pressed");print("counter:$number");}); }, child: Icon(Icons.add,size: 50,)),SizedBox(width: 100,height: 100,),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.red,foregroundColor:Colors.white),onPressed: (){ setState(() {

          number--; print("button pressed");print("counter:$number");}); }, child: Icon(Icons.minimize,size: 50,)),
        //Text("number=$number",style: TextStyle(fontSize: 40,color: Colors.red,fontWeight:FontWeight.bold),textAlign:TextAlign.center,),  Text("number=$number",style: TextStyle(fontSize: 40,color: Colors.red,fontWeight:FontWeight.bold),textAlign:TextAlign.center,),
      ],
    ));
  }
}
class TextWidget extends StatelessWidget {
  const TextWidget({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(child:Text(text));
  }
}
