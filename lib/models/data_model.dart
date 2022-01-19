import 'package:cloud_firestore/cloud_firestore.dart';

class DataModel {
  String title;
  String poster;
  String year;
  DataModel({
    required this.title,
    required this.poster,
    required this.year,
  });

  factory DataModel.fromDocumentSnapshot(DocumentSnapshot documentSnapshot) {
    return DataModel(
      title: documentSnapshot["title"],
      poster: documentSnapshot["poster"],
      year: documentSnapshot["year"],
    );
  }
}
