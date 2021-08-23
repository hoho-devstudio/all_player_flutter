import 'dart:io';
import 'dart:math';

import 'package:all_player_flutter/dev/InstaProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlayerView extends StatelessWidget {

  var data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('dev'),
      ),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: 200, color: Colors.lightGreen,
                    ),
                  ]
                ),
              ),
            ];
          },
          body: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: ''),
                  Tab(text: '')
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.amberAccent,
                      child: PlayerViewPage(),
                    ),
                    Container(
                      color: Colors.deepOrangeAccent
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),

    );
  }

}

class PlayerViewPage extends StatefulWidget {
  const PlayerViewPage({Key? key}) : super(key: key);

  @override
  _PlayerViewPageState createState() => _PlayerViewPageState();
}

class _PlayerViewPageState extends State<PlayerViewPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: 'https://namu.wiki/w/%EC%86%90%ED%9D%A5%EB%AF%BC',
    );
  }

}

