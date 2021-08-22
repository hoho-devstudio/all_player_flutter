import 'package:flutter/material.dart';

class HomeBottomView extends StatelessWidget {
  const HomeBottomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // TabBar 구현. 각 컨텐트를 호출할 탭들을 등록
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        // TabVarView 구현. 각 탭에 해당하는 컨텐트 구성
        body: TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
