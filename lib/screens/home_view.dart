import 'package:all_player_flutter/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {

  var controller = Get.put(HomeController());
  final TextEditingController _textEditingController = new TextEditingController();

  double searchHeight() {
    if (controller.searchData.length <= 4) {
      return controller.searchData.length * 50;
    } else {
      return 200;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('모두의 축구'),
        centerTitle: false,

        leading: Container(padding: EdgeInsets.only(left: 10),
          child: IconButton(onPressed: () {

          }, icon: Icon(Icons.menu),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 20,),
            Image(image: AssetImage('assets/home_main.jpg'), ),
            SizedBox(height: 5,),
            // TextButton(onPressed: () {}, child: Image(image: AssetImage('assets/home_main.png'), height: 40)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                  controller: _textEditingController,
                  onChanged: (text) {
                    print(text);

                    if (text.length > 0) {
                      controller.isSearchVisible.value = false;
                      if (text == '1') {
                        controller.searchData = ['손흥민1'].obs;
                      } else if (text == '12') {
                        controller.searchData = ['손흥민1', '손흥민2'].obs;
                      } else if (text == '123') {
                        controller.searchData = ['손흥민1', '손흥민2', '손흥민3'].obs;
                      } else if (text == '1234') {
                        controller.searchData = ['손흥민1', '손흥민2', '손흥민3', '손흥민4'].obs;
                      } else if (text == '12345') {
                        controller.searchData = ['손흥민1', '손흥민2', '손흥민3', '손흥민4', '손흥민5'].obs;
                      } else {
                        controller.searchData = ['손흥민1', '손흥민2', '손흥민3', '손흥민4', '손흥민5', '손흥민5', '손흥민5', '손흥민5'].obs;
                      }
                      print(controller.searchData);

                      controller.isSearchVisible.value = true;
                  } else {
                      controller.isSearchVisible.value = false;
                    }

                  },
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 16),
                    suffixIcon: Obx(() => controller.isSearchVisible.value ? IconButton(
                        onPressed: () {
                          _textEditingController.clear();
                          controller.isSearchVisible.value = false;
                        }, icon: Icon(Icons.clear)) : Icon(Icons.search)),
                    border: OutlineInputBorder(),
                    labelText: '선수검색',
                  )
              ),
            ),
            SizedBox(height: 5,),
            Stack(
              children: [
                // Container(
                //     width: double.infinity,
                //     color: Colors.lightGreen,
                //     child: SizedBox(height: 200,)),
                // Center(child: Image(image: AssetImage('assets/home_main.jpg'), )),
                Obx(() => controller.isSearchVisible.value ? Container(
                  height: searchHeight(),
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: ListView.builder(
                        itemCount: controller.searchData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new ListTile(
                            title: Text(controller.searchData[index]),
                            onTap: () {
                              _textEditingController.clear();
                              controller.isSearchVisible.value = false;
                            },
                          );
                        }),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // shape: BoxShape.rectangle,
                        // border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: -1,
                              blurRadius: 7,
                              offset: Offset(0, 2)
                          )
                        ]
                    ),
                  ),
                ) : Container()),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 60),
              child: PopupMenuButton<String>(
                icon: Opacity(opacity: 0.0, child: const Icon(Icons.search)),
                onSelected: (String value) {
                  // _controller.text = value;
                },
                itemBuilder: (BuildContext context) {
                  return controller.searchData.map<PopupMenuItem<String>>((String value) {
                    return new PopupMenuItem(
                        child: new Text(value), value: value);
                  }).toList();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
