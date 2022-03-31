import 'package:e_food/screens/homescreen.dart';
import 'package:e_food/services/login_services.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _phoneController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Phone',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                LoginService loginService = await LoginService(
                  phoneNumber: _phoneController.text,
                  password: _passwordController.text,
                );
                if (await loginService.login() == true) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                } else {
                  print('error');
                }
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
