import 'package:ecommerce_app_backend/common/widgets/bottom_bar.dart';
import 'package:ecommerce_app_backend/features/admin/screens/add_product_screen.dart';
import 'package:ecommerce_app_backend/features/auth/screens/auth_screen.dart';
import 'package:ecommerce_app_backend/common/widgets/bottom_bar.dart';
import 'package:ecommerce_app_backend/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
<<<<<<< HEAD:lib/router.dart
=======

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf:lib/routes.dart
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("Screen does not exist !"),
          ),
        ),
      );
  }
}
