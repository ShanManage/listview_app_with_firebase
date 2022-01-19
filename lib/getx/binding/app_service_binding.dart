import 'package:get/get.dart';
import 'package:listview_app_with_firebase/getx/service/app_service.dart';

class AppServiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AppService>(AppService());
  }
}
