import 'dart:convert';
import 'package:ecommerce_app_backend/constants/error_handling.dart';
import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:ecommerce_app_backend/constants/utils.dart';
import 'package:ecommerce_app_backend/features/auth/screens/auth_screen.dart';
import 'package:ecommerce_app_backend/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AccountServices {
  void logOut(BuildContext context) async {
    try {
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      await sharedPreferences.setString('x-auth-token', '');
      Navigator.pushNamedAndRemoveUntil(
        context,
        AuthScreen.routeName,
        (route) => false,
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
