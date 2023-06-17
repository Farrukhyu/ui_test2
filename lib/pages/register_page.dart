import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                  width: 300,
                  height: 146,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
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
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          prefixIconColor: Colors.black,
                          border: InputBorder.none,
                          hintText: 'Email Address',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Positioned(
                  top: 50,
                  right: -0,
                  child: FloatingActionButton.extended(
                    onPressed: null,
                    label: Icon(Icons.check),
                  ),
                ),
              ],
            ),
            const TextButton(
              onPressed: null,
              child: Text('Forgot password?'),
            ),
            const SizedBox(
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
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.red),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
