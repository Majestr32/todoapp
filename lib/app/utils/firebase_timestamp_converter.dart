import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseTimestampConverter{
  static DateTime fromTimestamp(Timestamp timestamp) => timestamp.toDate();
}