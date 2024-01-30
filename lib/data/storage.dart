import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evaz/models/user_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

final storageProvider = Provider<Storage>(
  create: (context) => _StorageImpl(),
);

abstract class Storage {
  CollectionReference get users;

  Future<void> saveUserData(String surname, String name, String patr);

  Future<UserData> getUser();
}

class _StorageImpl implements Storage {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  @override
  Future<void> saveUserData(String surname, String name, String patr) async {
    return users
        .doc(auth.currentUser!.uid)
        .set(
          {
            'surname': surname,
            'name': name,
            'patr': patr,
          },
        );
  }

  @override
  Future<UserData> getUser() async {
    var docSnapshot = await users.doc(auth.currentUser!.uid).get();
    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data() as Map<String, dynamic>;
      return UserData.fromJson(data);
    } else {
      throw Exception('Ошибка');
    }
  }
}
