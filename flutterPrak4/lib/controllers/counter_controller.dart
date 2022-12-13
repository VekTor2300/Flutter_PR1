import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  RxList<String> history = List<String>.empty().obs;
  increment() {
    Get.isDarkMode ? count + 2 : count++;
    history.add('Увеличение - ' + count.toString());
  }

  decrement() {
    Get.isDarkMode ? count - 2 : count--;
    history.add('Уменьшение - ' + count.toString());
  }
}
