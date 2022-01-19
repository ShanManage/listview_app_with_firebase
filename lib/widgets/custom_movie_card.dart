import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

import 'package:listview_app_with_firebase/models/data_model.dart';
import 'package:listview_app_with_firebase/widgets/text/custom_text.dart';

class CustomMovieCard extends StatelessWidget {
  DataModel movie;
  CustomMovieCard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.grey.withOpacity(0.4),
      ),
      child: Container(
        margin: EdgeInsets.all(10),
        child: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 200,
                margin: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FancyShimmerImage(
                    imageUrl: movie.poster,
                    boxFit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: CustomText(
                              text: "Title :",
                              color: Colors.white60,
                              size: 15,
                              weight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: CustomText(
                              text: movie.title,
                              color: Colors.white,
                              size: 20,
                              weight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: CustomText(
                              text: "Year :",
                              color: Colors.white60,
                              size: 15,
                              weight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 5, right: 5),
                            child: CustomText(
                              text: movie.year,
                              color: Colors.white,
                              size: 20,
                              weight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
