import 'package:evaz/data/storage.dart';
import 'package:evaz/models/user_data.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

final personalAccountViewModelProvider = Provider<PersonalAccountViewModel>(
  create: (context) {
    final personalAccountViewModel =
        PersonalAccountViewModelImpl(context.read<Storage>());
    personalAccountViewModel.init();    
    return personalAccountViewModel;
  },
);

abstract class PersonalAccountViewModel {
  TextEditingController get name;
  TextEditingController get patr;
  TextEditingController get surname;

  void init();

  void saveInfo();
}

class PersonalAccountViewModelImpl implements PersonalAccountViewModel {
  PersonalAccountViewModelImpl(this._storage);

  final Storage _storage;

  @override
  TextEditingController name = TextEditingController();

  @override
  TextEditingController patr = TextEditingController();

  @override
  TextEditingController surname = TextEditingController();

  @override
  void saveInfo() {
    _storage.saveUserData(surname.text, name.text, patr.text);
  }

  void dispose() {
    name.dispose();
    patr.dispose();
    surname.dispose();
  }

  @override
  void init() async {
    UserData userData = await _storage.getUser();
    name.text = userData.name;
    patr.text = userData.patr;
    surname.text = userData.surname;
  }
}
