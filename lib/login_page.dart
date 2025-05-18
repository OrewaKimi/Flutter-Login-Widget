import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const loadingDuration = Duration(milliseconds: 2000);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // login
  Future<String?> _authUser(LoginData data) {
    return Future.delayed(LoginPage.loadingDuration).then((value) => null);
  }

  // forgot password
  Future<String?> _recoverPassword(String email) {
    return Future.delayed(LoginPage.loadingDuration).then((value) => null);
  }

  // sign up
  Future<String?> _signUp(SignupData data) {
    return Future.delayed(LoginPage.loadingDuration).then((value) => null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterLogin(
        title: 'My App',
        onLogin: _authUser,
        onRecoverPassword: _recoverPassword,
        onSignup: _signUp,
      ),
    );
  }
}
