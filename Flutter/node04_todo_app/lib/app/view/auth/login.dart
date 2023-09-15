import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:node04_todo_app/app/service/auth_service.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance; // flutter pub add firebase_auth 터미널 실행
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build( BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 15),
            ElevatedButton(onPressed:() {
              loginWithEmailAndPassword(_auth, _emailController.text, _passwordController.text);
            },
              child: Text('Login'),
            ),
            TextButton(
            onPressed: () {},
            child: Text('Resiter')
            ),
          ],
        ),
      ),
    );



  }
}