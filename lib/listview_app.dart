import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_app_with_firebase/screens/home_screen.dart';

import 'getx/binding/app_service_binding.dart';

class ListviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      title: "Listview App",
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomeScreen(),
          binding: AppServiceBinding(),
        ),
      ],
    );
  }
}
