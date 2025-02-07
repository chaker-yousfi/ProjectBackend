import 'package:ecommerce_app_backend/common/widgets/bottom_bar.dart';
import 'package:ecommerce_app_backend/features/address/screens/address_screen.dart';
import 'package:ecommerce_app_backend/features/admin/screens/add_product_screen.dart';
import 'package:ecommerce_app_backend/features/auth/screens/auth_screen.dart';
import 'package:ecommerce_app_backend/common/widgets/bottom_bar.dart';
import 'package:ecommerce_app_backend/features/home/screens/category_deals_screen.dart';
import 'package:ecommerce_app_backend/features/home/screens/home_screen.dart';
import 'package:ecommerce_app_backend/features/product_details/screens/product_details_screen.dart';
import 'package:ecommerce_app_backend/features/search/screens/search_screen.dart';
import 'package:ecommerce_app_backend/models/product.dart';
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

    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );
      case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
        case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
      case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(
          product: product,
        ),
      );
      case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
        ),
      );
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
