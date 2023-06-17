import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_test_task2/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  width: 300,
                  height: 98,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(90),
                        bottomRight: Radius.circular(90),
                      ),
                      // shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          prefixIconColor: Colors.black,
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock_outline),
                          prefixIconColor: Colors.black,
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 0,
                  child: FloatingActionButton.extended(
                    onPressed: null,
                    label: Icon(Icons.navigate_next),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: null,
              child: Text('Forgot password?'),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                border: Border.all(color: Colors.grey),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
