import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Getsearch extends GetxController {
  RxList<String> SearchHistory = <String>[].obs;
  final TextEditingController textEditingController = TextEditingController();
  RxBool noSearch = false.obs;
  RxString query = ''.obs;
  void OnSubmit() {
    query.value = textEditingController.value.text;
    SearchHistory.add(textEditingController.value.text);
    noSearch.value = true;
    update();
  }

  void clearSearchHistory(int index) {
    SearchHistory.removeAt(index);
  }

  void cleartextfield() {
    textEditingController.clear();
  }
}
