import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_app_with_firebase/getx/service/app_service.dart';
import 'package:listview_app_with_firebase/widgets/custom_movie_card.dart';
import 'package:listview_app_with_firebase/widgets/text/custom_text.dart';

class HomeScreen extends StatelessWidget {
  final _service = Get.find<AppService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "Listview App",
          color: Colors.white,
          size: 20,
          weight: FontWeight.w600,
        ),
      ),
      body: GetX<AppService>(
        builder: (_) {
          return (_service.isLoad.value)
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: _service.moviesList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return CustomMovieCard(movie: _service.moviesList[index]);
                  },
                );
        },
      ),
    );
  }
}
