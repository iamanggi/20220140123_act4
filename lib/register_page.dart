import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
 State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State <RegisterPage> {
  // Membuat controller untuk mengambil input dari TextField email dan password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState(){
    super.initState();
  }
}