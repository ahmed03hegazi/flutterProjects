import 'package:flutter/material.dart';
class RadioView extends StatelessWidget {
  const RadioView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Center(
        child:  Column(
          children: [
            Image.asset("assets/images/radio_image.png"),
            SizedBox(height: 30),
            const Text(
              "ازاعة القرآن الكريم",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: (){
                    print("bjjh");
                  },
                  icon: Icon(Icons.skip_previous),
                  iconSize: 40,
                  color: Color(0xFFB7935F),
                ),
                IconButton(
                  onPressed: (){
                    print("bjjh");
                  },
                  icon: Icon(Icons.play_arrow_rounded),
                  iconSize: 75,
                  color: Color(0xFFB7935F),
                ),
                IconButton(
                    onPressed: (){
                      print("bjjh");
                    },
                    icon: Icon(Icons.skip_next),
                    iconSize: 40,
                    color: Color(0xFFB7935F),
                ),

              ],
            )
          ],
        ),
    );
  }
}