import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:all_player_flutter/screens/home_view.dart';
import 'package:all_player_flutter/screens/player_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: '모두의 선수',
    theme: ThemeData(primarySwatch: Colors.green),
    home: HomeView(),
    getPages: [
      GetPage(name: "/home", page: () => HomeView()),
      GetPage(name: "/player", page: () => PlayerView())
    ],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

