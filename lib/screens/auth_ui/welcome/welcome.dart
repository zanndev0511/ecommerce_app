import 'package:app_demo/consts/consts.dart';
import 'package:app_demo/consts/routes.dart';
import 'package:app_demo/screens/auth_ui/login/login.dart';
import 'package:app_demo/widgets/primary_button/primary_button.dart';
import 'package:app_demo/widgets/top_tittles/top_tittles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopTitles(
            title: 'Welcome',
            subtitle: 'Buy any item from using app',
            hasArrowBack: false,
          ),
          Center(
            child: Image.asset(
              imgEcommerce,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: null,
                child: Icon(
                  Icons.facebook,
                  size: 35,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              CupertinoButton(
                onPressed: null,
                child: Image(
                  image: AssetImage(icGoogleLogo),
                  height: 29,
                ),
              )
            ],
          ),
          18.heightBox,
          PrimaryButton(
              onPressed: () {
                Routes.instance.push(widget: const Login(), context: context);
              },
              title: 'Login'),
          18.heightBox,
          PrimaryButton(onPressed: () {}, title: 'Sign Up')
        ],
      ),
    ));
  }
}
