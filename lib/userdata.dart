import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;

get getName async {
  try {
    final DocumentSnapshot snapshot = await firestore
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser?.uid)
        .get();

    if (snapshot.exists) {
      final userData = snapshot.data() as Map<String, dynamic>;

      if (userData.containsKey('name')) {
        final String name = userData['name'] as String;
        print(name);
        return await name;
      }
    }

    return ''; // User document not found or name field is missing
  } catch (e) {
    return ('Error retrieving name: $e');
  }
}

get name async {
  try {
    final String name = await getName();

    if (name.isNotEmpty) {
      print('User name: $name');
    } else {
      print('User not found or name field is missing.');
    }
  } catch (e) {
    print('Error: $e');
  }
}
