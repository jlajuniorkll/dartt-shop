import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserManager extends ChangeNotifier {
  UserManager() {
    _loadCurrentUser();
  }

  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  bool _loading = false;

  bool get loading => _loading;
  set loading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> signIn(
      {user, required Function onFail, required Function onSuccess}) async {
    loading = true;
    try {
      await auth.signInWithEmailAndPassword(
        email: user.email,
        password: user.senha,
      );
      onSuccess();
    } on FirebaseAuthException catch (e, s) {
      onFail(_handleFirebaseLoginWithCredentialsException(e, s));
    } on PlatformException catch (e) {
      e.code;
    }
    loading = false;
  }

  String _handleFirebaseLoginWithCredentialsException(
      FirebaseAuthException e, StackTrace s) {
    if (e.code == 'user-disabled') {
      return 'O usuário informado está desabilitado.';
    } else if (e.code == 'user-not-found') {
      return 'O usuário informado não está cadastrado.';
    } else if (e.code == 'invalid-email') {
      return 'O domínio do e-mail informado é inválido.';
    } else if (e.code == 'wrong-password') {
      return 'A senha informada está incorreta.';
    } else {
      return 'Erro inexperado';
    }
  }

  Future<void> _loadCurrentUser() async {
    final User? currentUser = auth.currentUser;
    if (currentUser != null) {
      user = currentUser;
      print(user!.uid);
    }
    notifyListeners();
  }
}
