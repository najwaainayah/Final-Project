// lib/services/firestore_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addSampleNote(String title, String body) async {
    await _db.collection('notes').add({
      'title': title,
      'body': body,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getNotesStream() {
    return _db.collection('notes').orderBy('createdAt', descending: true).snapshots();
  }
}
