import 'package:flutter/material.dart';
import 'package:test_1/Screens/number_screens.dart';

class ImageSlider extends StatefulWidget {

  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Slider Screen",style:TextStyle(
          color: Colors.white,
        ),),
        centerTitle:true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage("assets/images$counter.jpg"),
                  //fit:BoxFit.fitHeight,
                ),
                color: Colors.white10,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.amber,
                  width: 10,
                ),
              ),
              alignment: Alignment.bottomCenter,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Car $counter",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.red,
                    size: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 20,
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState((){  if(counter>1){
                      counter--;
                    }
                    else{
                      counter=4;
                    }
                    }
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder:(context)=>NumberScreens(path:"assets/images$counter.jpg" ,),));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amber
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                InkWell(
                  onTap: () {

                 setState((){  if(counter<4){
                    counter++;
                    }
                    else{
                    counter=1;
                    }
                 }
                 );
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
