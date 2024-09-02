import 'package:get/get.dart';

class DaySwitchController extends GetxController {
  var monday = false.obs;
  var tuesday = false.obs;
  var wednesday = false.obs;
  var thursday = false.obs;
  var friday = false.obs;
  var saturday = false.obs;
  var sunday = false.obs;
  var displayText = ''.obs;

  void updateDisplayText() {
    List<String> textList = [];
    if (monday.value) textList.add('Monday');
    if (tuesday.value) textList.add('Tuesday');
    if (wednesday.value) textList.add('Wednesday');
    if (thursday.value) textList.add('Thursday');
    if (friday.value) textList.add('Friday');
    if (saturday.value) textList.add('Saturday');
    if (sunday.value) textList.add('Sunday');
    
    displayText.value = textList.join(', ');
  }
}
