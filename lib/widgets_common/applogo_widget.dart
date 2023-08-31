import 'package:app_demo/consts/consts.dart';
import 'package:flutter/material.dart';

Widget applogoWidget() {
  // using velocity
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .padding(const EdgeInsets.all(8))
      .rounded
      .make();
}
