import 'package:get/get.dart';

class CustomTabController extends GetxController {
  var selectedTab = 'past_dues'.obs;

  void changeTab(String tab) {
    selectedTab.value = tab;
  }
}
