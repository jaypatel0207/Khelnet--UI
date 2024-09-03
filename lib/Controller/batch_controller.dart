import 'package:get/get.dart';

class BatchController extends GetxController {
  var nameList = [
    "Khelnet Gurgaon Batch -1",
    "Khelnet Gurgaon Batch -2",
    "Khelnet Gurgaon Batch -3",
    "Khelnet Gurgaon Batch -4",
    "Khelnet Gurgaon Batch -5", 
    "Khelnet Gurgaon Batch -6", 
    "Khelnet Gurgaon Batch -7", 
    "Khelnet Gurgaon Batch -8", 
  ].obs;

  void deleteBatch(int index) {
    nameList.removeAt(index);
  }
}
