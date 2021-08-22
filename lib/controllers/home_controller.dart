import 'package:get/get.dart';

class HomeController extends GetxController {
  var isSearchVisible = false.obs;
  var searchData = ['손흥민1', '손흥민2', '손흥민3', '손흥민4', '손흥민5', '손흥민6'].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    once(searchData, (_) {
      print('once: searchData');
    });

    ever(searchData, (_) {
      print('ever: searchData');
      update();
    });

  }
}