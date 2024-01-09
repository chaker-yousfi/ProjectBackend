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
<<<<<<< HEAD
      showSnackBar(context, jsonDecode(response.body)['msg']);
      break;
    case 500:
      showSnackBar(context, jsonDecode(response.body)['error']);
      break;
    default:
=======
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
>>>>>>> f2245193559d846579decf896fe8c02fc576cb53
      showSnackBar(context, response.body);
  }
}
