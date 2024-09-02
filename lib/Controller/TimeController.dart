import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TimeController extends GetxController {
  var startTime = ''.obs;
  var endTime = ''.obs;
  var batchName = ''.obs;

  void setStartTime(String time) {
    startTime.value = time;
  }

  void setEndTime(String time) {
    endTime.value = time;
  }

  void setBatchName(String name) {
    batchName.value = name;
  }
}
