import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:all_player_flutter/screens/home_view.dart';
import 'package:all_player_flutter/screens/player_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'all-player soccer',
    theme: ThemeData(
      primaryColor: Color(0xff242e43),
      primarySwatch: Colors.indigo
    ),
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

