import 'package:flutter/material.dart';
import 'package:project_2/moduls/hadeth/hadeth_details_view.dart';
import 'package:project_2/moduls/quran/sura_details_view.dart';
import 'dart:async';
import 'core/style/app_themes.dart';
import 'layout/home_layout.dart';
import 'moduls/splash/splash_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightThem,
        initialRoute: SplashView.routeName,
        routes: {
          SplashView.routeName: (context) =>  const SplashView(),
          HomeLayout.routeName: (context) =>   HomeLayout(),
          suraDetailsView.routeName: (context) =>  suraDetailsView(),
          HadethDetailsView.routeName: (context) => HadethDetailsView(),

        }
    );
  }
}



















