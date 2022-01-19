import 'dart:async';

import 'package:get/get.dart';
import 'package:listview_app_with_firebase/models/data_model.dart';
import 'package:listview_app_with_firebase/services/firebase_service.dart';
import 'package:logger/logger.dart';

class AppService extends GetxController {
  RxBool isLoad = false.obs;
  RxList<DataModel> moviesList = <DataModel>[].obs;

  @override
  void onInit() {
    isLoad(true);
    loadItem();
    super.onInit();
  }

  loadItem() {
    moviesList.bindStream(FirebaseService().getMovieList());
    Timer(Duration(milliseconds: 1500), () {
      isLoad(false);
    });
    Logger().i(moviesList);
  }
}
