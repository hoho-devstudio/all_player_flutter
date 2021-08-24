import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radar_chart/radar_chart.dart';

class PlayerView extends StatelessWidget {

  var data = Get.arguments;
  int pi = 3;
  int _length = 6;
  List<double> values1 = [0.95, 0.20, 0.75, 0.9, 0.85, 0.95];
  // List<double> values1 = [0,0,0,0,0,0];
  List<double> values2 = [0.5, 0.3, 0.85, 0.5, 0.3, 0.85];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('dev'),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      height: 260,
                      color: Colors.grey.shade900,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.all(20),
                              child: Text('손흥민', style: TextStyle(color: Colors.white),),


                            ),
                          ),
                          Container(
                            color: Colors.grey.shade900,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: RadarChart(
                                    length: _length,
                                    radius: 80,
                                    initialAngle: 0.54,
                                    backgroundColor: Colors.grey.shade600,
                                    borderStroke: 1,
                                    borderColor: Colors.indigo.withOpacity(0.4),
                                    radialStroke: 0.3,
                                    radialColor: Colors.grey,
                                    radars: [
                                      RadarTile(
                                        values: values1,
                                        borderStroke: 2.5,
                                        borderColor: Colors.indigo,
                                        backgroundColor: Colors.indigo.withOpacity(0.4),
                                      ),
                                      // RadarTile(
                                      //   values: values2,
                                      //   borderStroke: 2,
                                      //   borderColor: Colors.blue,
                                      //   backgroundColor: Colors.blue.withOpacity(0.4),
                                      // ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Text('ATT', style: TextStyle(color: Colors.white),),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text('SPD', style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 160,),
                                          Text('TEC', style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                      SizedBox(height: 40,),
                                      Row(
                                        children: [
                                          Text('POW', style: TextStyle(color: Colors.white),),
                                          SizedBox(width: 160,),
                                          Text('STA', style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                      Text('DEF', style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 260,
                                  height: 260,
                                  // color: Colors.grey.shade900.withOpacity(0.8),
                                  // child: Text('등록필요', style: TextStyle(color: Colors.white),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ];
          },
          body: Column(
            children: [
              TabBar(
                labelColor: Colors.indigo,
                labelStyle: TextStyle(fontSize: 18),
                tabs: [
                  Tab(text: 'A'),
                  Tab(text: 'B'),
                  Tab(text: 'C')
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.amberAccent,
                    ),
                    Container(
                      color: Colors.indigo
                    ),
                    Container(
                        color: Colors.green
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


