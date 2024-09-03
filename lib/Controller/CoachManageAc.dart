import 'package:get/get.dart';

class Coachmanageac extends GetxController {
  var attendance = false.obs;
  var fees = false.obs;
  var expenses = false.obs;
  var skillRating = false.obs;
  var displayText = ''.obs;

  void updateDisplayText() {
    List<String> textList = [];
    if (attendance.value) textList.add('Attendance');
    if (fees.value) textList.add('Fees');
    if (expenses.value) textList.add('Expenses');
    if (skillRating.value) textList.add('Skill Rating');
    
    displayText.value = textList.join(', ');
  }
}
