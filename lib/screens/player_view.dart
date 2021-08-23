import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radar_chart/radar_chart.dart';

class PlayerView extends StatelessWidget {

  var data = Get.arguments;
  int pi = 3;
  int _length = 6;
  List<double> values1 = [0.95, 0.85, 0.75, 0.9, 0.85, 0.95];
  List<double> values2 = [0.5, 0.3, 0.85, 0.5, 0.3, 0.85];

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
                      height: 250, color: Colors.white,
                      child: Container(
                        color: Colors.grey.shade200,
                        child: Center(
                          child: RadarChart(
                            length: _length,
                            radius: 100,
                            initialAngle: 0.52,
                            backgroundColor: Colors.white,
                            borderStroke: 1,
                            borderColor: Colors.indigo.withOpacity(0.4),
                            radialStroke: 0.3,
                            radialColor: Colors.grey,
                            radars: [
                              RadarTile(
                                values: values1,
                                borderStroke: 2,
                                borderColor: Colors.yellow,
                                backgroundColor: Colors.yellow.withOpacity(0.6),
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


