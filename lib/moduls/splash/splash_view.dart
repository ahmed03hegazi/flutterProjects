import 'dart:async';

import 'package:flutter/material.dart';

import '../../layout/home_layout.dart';


class  SplashView extends StatelessWidget{
  static  const String routeName =  "spalsh";

  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds:1),(){
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);

    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image : AssetImage("assets/images/backgound_splash.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
