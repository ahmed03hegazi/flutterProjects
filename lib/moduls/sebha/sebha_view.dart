import 'package:flutter/material.dart';


class SebhaView extends StatefulWidget {
  static  const String routeName =  "home_layout";
  @override
  State <SebhaView> createState() => _SebhaView();
}
class _SebhaView extends State <SebhaView> {
  int counter = 0;
  double rotationDegrees = 0;
  static List <String> textSebha = [ "استغفر اللة","اعوز باللة","اللة اكبر","سبحان اللة"];
  static int i =0;
  String text = textSebha[i];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
                Image.asset("assets/images/head_sebha_logo.png"),
                 InkWell(
                    onTap:() {
                      incrementCounter();
                    },
                    child: Transform.rotate(
                      angle: rotationDegrees * (3.14 / 180),
                      child: Image.asset(
                        "assets/images/body_sebha_logo.png",
                      ),
                    ),
                  ),
            SizedBox(height: 20),
            Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(10),
              ),//BoxDecoration
              child: Center(
                child: Text(
                  '$counter',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(50),
              ),//BoxDecoration
              child: Center(
                child: Text(
                  '$text',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      );
  }

  incrementCounter() {
    setState(() {
      rotationDegrees += -10;
      counter++;
      if(counter==11){
          changeText();
      }
    });
  }
  changeText(){
    setState(() {
      counter = 0;
      i++;
      if (i==textSebha.length) i = 0;
      text = textSebha[i];
    });
  }
}

