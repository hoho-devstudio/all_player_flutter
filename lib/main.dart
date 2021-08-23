import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:all_player_flutter/screens/home_view.dart';
import 'package:all_player_flutter/screens/player_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'all-player soccer',
    theme: ThemeData(
      primaryColor: Color(0xff242e43),
      primarySwatch: Colors.indigo
    ),
    home: PlayerView(),
    getPages: [
      GetPage(name: "/home", page: () => HomeView()),
      GetPage(name: "/player", page: () => PlayerView(), transition: Transition.cupertino)
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

