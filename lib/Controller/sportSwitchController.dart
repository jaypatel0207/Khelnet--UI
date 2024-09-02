import 'package:get/get.dart';

class SportSwitchController extends GetxController {
  var cricket = false.obs;
  var football = false.obs;
  var tennis = false.obs;
  var basketball = false.obs;
  var badminton = false.obs;
  var tableTennis = false.obs;
  var martialArts = false.obs;
  var rollerSports = false.obs;
  var gymnastics = false.obs;
  var displayText = ''.obs;

  void updateDisplayText() {
    List<String> textList = [];
    if (cricket.value) textList.add('Cricket');
    if (football.value) textList.add('Football');
    if (tennis.value) textList.add('Tennis');
    if (basketball.value) textList.add('Basketball');
    if (badminton.value) textList.add('Badminton');
    if (tableTennis.value) textList.add('Table Tennis');
    if (martialArts.value) textList.add('Martial Arts');
    if (rollerSports.value) textList.add('Roller Sports');
    if (gymnastics.value) textList.add('Gymnastics');
    
    displayText.value = textList.join(', ');
  }
}
