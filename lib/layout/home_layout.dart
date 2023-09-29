import 'package:flutter/material.dart';
import 'package:project_2/moduls/sebha/sebha_view.dart';
import '../main.dart';
import '../moduls/hadeth/hadeth_view.dart';
import '../moduls/quran/quran_view.dart';
import '../moduls/radio/radio_view.dart';
import '../moduls/setting/settind_view.dart';


class HomeLayout extends StatefulWidget {
  static  const String routeName =  "home_layout";
  @override
  State <HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State <HomeLayout> {

  int selectedIndex = 0;
  List<Widget> screenWidgets = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingView(),

  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image : AssetImage("assets/images/default_bg.png"),
          fit: BoxFit.fill,
        ),//DecorationImage
      ),//BoxDecoration
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:  Text(
              "islami"
          ),
        ),
        body: screenWidgets[selectedIndex] ,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index){
            setState((){

              selectedIndex = index;

            });
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_quran.png")), label:"quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")), label:"hadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")), label:"sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/icon_radio.png")), label:"radio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label:"settind"),
          ],

        ),//BottomNavigationBar
      ),//scaffold
    );//Container
  }
}