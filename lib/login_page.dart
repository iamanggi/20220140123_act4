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

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey <FormState>();
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email', hintText: 'Enter your email'
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) { 
                    return 'Please enter your email';
                    }
                    return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password', hintText: 'Enter your password', obscureText: true
                  ,),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                      }
                      return null;
                      },
              ),
              TextButton(
                onPressed: (){
                  Navigator.push
                  (context, MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                  },
                  child: Text('Belum punya akun? Daftar'),
                  ),
              ],
          ),)
      ),
    );
  }
}


