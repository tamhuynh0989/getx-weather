
import 'package:demo_getx_flutter/utils/base/page_state.dart';
import 'package:get/get.dart';

class DemoGetXController extends GetxController {
  RxBool isLogged = false.obs;
  Rx<PageState> pageState = PageState.initial.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> init() async {}
}
