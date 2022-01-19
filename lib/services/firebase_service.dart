import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:listview_app_with_firebase/models/data_model.dart';

class FirebaseService {
  final firestoreInstance = FirebaseFirestore.instance;

  Stream<List<DataModel>> getMovieList() {
    return firestoreInstance
        .collection("movies")
        .snapshots()
        .map((QuerySnapshot query) {
      List<DataModel> retVal = [];

      query.docs.forEach((element) {
        retVal.add(DataModel.fromDocumentSnapshot(element));
      });
      return retVal;
    });
  }
}
