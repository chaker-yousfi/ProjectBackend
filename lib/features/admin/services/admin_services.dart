import 'dart:convert';
import 'dart:io';
<<<<<<< HEAD
=======

import 'package:cloudinary_public/cloudinary_public.dart';
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:ecommerce_app_backend/constants/error_handling.dart';
import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:ecommerce_app_backend/constants/utils.dart';
import 'package:ecommerce_app_backend/models/product.dart';
import 'package:ecommerce_app_backend/providers/user_provider.dart';
<<<<<<< HEAD
import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
=======
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:provider/provider.dart';

class AdminServices {
  void sellProduct({
    required BuildContext context,
    required String name,
    required String description,
    required double price,
    required double quantity,
    required String category,
    required List<File> images,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
<<<<<<< HEAD
      final cloudinary = CloudinaryPublic('dto12y8ko', 'hbrewygd');
=======
      final cloudinary = CloudinaryPublic('dexeo7vnn', 'uhnuaoxy');
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
      List<String> imageUrls = [];

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
          CloudinaryFile.fromFile(images[i].path, folder: name),
        );
        imageUrls.add(res.secureUrl);
      }

      Product product = Product(
        name: name,
        description: description,
        quantity: quantity,
        images: imageUrls,
        category: category,
        price: price,
      );

      http.Response res = await http.post(
        Uri.parse('$uri/admin/add-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: product.toJson(),
      );

<<<<<<< HEAD
      httpErrorHandle(
=======
      httpErrorHandling(
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Product Added Successfully!');
          Navigator.pop(context);
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

<<<<<<< HEAD
  // get all the products
  Future<List<Product>> fetchAllProducts(BuildContext context) async {
=======
   Future<List<Product>> fetchAllProducts(BuildContext context) async {
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Product> productList = [];
    try {
      http.Response res =
          await http.get(Uri.parse('$uri/admin/get-products'), headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'x-auth-token': userProvider.user.token,
      });

<<<<<<< HEAD
      httpErrorHandle(
=======
      httpErrorHandling(
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            productList.add(
              Product.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return productList;
  }

<<<<<<< HEAD
  void deleteProduct({
=======

   void deleteProduct({
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
    required BuildContext context,
    required Product product,
    required VoidCallback onSuccess,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    try {
      http.Response res = await http.post(
        Uri.parse('$uri/admin/delete-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
        body: jsonEncode({
          'id': product.id,
        }),
      );

<<<<<<< HEAD
      httpErrorHandle(
=======
      httpErrorHandling(
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
        response: res,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
<<<<<<< HEAD
=======

>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
}
