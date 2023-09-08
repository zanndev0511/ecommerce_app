import 'package:app_demo/consts/consts.dart';
import 'package:app_demo/widgets/primary_button/primary_button.dart';
import 'package:app_demo/widgets/top_tittles/top_tittles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
              title: 'Login',
              subtitle: 'Welcome back to G-Shop',
              hasArrowBack: true,
            ),
            20.heightBox,
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            12.heightBox,
            TextFormField(
              obscureText: isShowPassword,
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.key_outlined),
                  suffixIcon: CupertinoButton(
                      onPressed: () {
                        setState(() {
                          isShowPassword = !isShowPassword;
                        });
                      },
                      padding: EdgeInsets.zero,
                      child: Icon(
                        isShowPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ))),
            ),
            12.heightBox,
            PrimaryButton(onPressed: () {}, title: 'Login'),
            24.heightBox,
            const Center(child: Text('Don\'t have an account?')),
            Center(
              child: CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    'Create a new account',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
