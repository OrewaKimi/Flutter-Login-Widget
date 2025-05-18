import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return Theme(
      data: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      child: FlutterLogin(
        title: 'E-Grocery',
        onLogin: _authUser,
        onSignup: _signUp,
        onRecoverPassword: _recoverPassword,
        theme: LoginTheme(
          primaryColor: Colors.purple,
          accentColor: Colors.white,
          errorColor: Colors.redAccent,
          pageColorLight: Colors.white,
          pageColorDark: Colors.grey[100]!,
          cardTheme: const CardTheme(
            color: Colors.white,
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          titleStyle: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
          bodyStyle: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black87,
          ),
          buttonStyle: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.white,
          ),
          buttonTheme: const LoginButtonTheme(
            backgroundColor: Colors.purple,
            splashColor: Colors.deepPurple,
            highlightColor: Colors.deepPurpleAccent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
