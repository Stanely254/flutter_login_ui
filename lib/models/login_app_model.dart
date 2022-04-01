import 'package:flutter/material.dart';

class LoginAppModel extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  Map<String, String> userBody = {};

  void notify() => notifyListeners();

  set setEmail(String email) {
    userBody['email'] = email;
    notifyListeners();
  }

  set setPassword(String password) {
    userBody['password'] = password;
    notifyListeners();
  }
}
