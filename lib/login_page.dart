import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
 State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State <LoginPage> {
  // Membuat controller untuk mengambil input dari TextField email dan password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

}


