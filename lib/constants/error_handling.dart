import 'dart:convert';

import 'package:ecommerce_app_backend/constants/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      print(jsonDecode(response.body)['msg']);
      showSnackBar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      print("500");
      print(jsonDecode(response.body)['msg']);

      showSnackBar(context, jsonDecode(response.body)['error']);
      break;
    default:
      print("default");
      // print(jsonDecode(response.body)['msg']);
      showSnackBar(context, response.body);
  }
}
