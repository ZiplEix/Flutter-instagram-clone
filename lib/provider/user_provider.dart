import 'package:flutter/foundation.dart';
import 'package:instagram_clone/function/auth_methode.dart';
import 'package:instagram_clone/models/user.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethode _authMethods = AuthMethode();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
