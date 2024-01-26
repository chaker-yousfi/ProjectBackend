// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome !`
  String get welcome_text {
    return Intl.message(
      'Welcome !',
      name: 'welcome_text',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout_button {
    return Intl.message(
      'Log out',
      name: 'logout_button',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get hint_name {
    return Intl.message(
      'Name',
      name: 'hint_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get hint_email {
    return Intl.message(
      'Email',
      name: 'hint_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get hint_password {
    return Intl.message(
      'Password',
      name: 'hint_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signup {
    return Intl.message(
      'Sign up',
      name: 'signup',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signin {
    return Intl.message(
      'Sign in',
      name: 'signin',
      desc: '',
      args: [],
    );
  }

  /// `Hello, `
  String get hello {
    return Intl.message(
      'Hello, ',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Your Orders`
  String get orders {
    return Intl.message(
      'Your Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message(
      'See all',
      name: 'see_all',
      desc: '',
      args: [],
    );
  }

  /// `Turn Seller`
  String get turn_seller {
    return Intl.message(
      'Turn Seller',
      name: 'turn_seller',
      desc: '',
      args: [],
    );
  }

  /// `Your Wish List`
  String get wishlist {
    return Intl.message(
      'Your Wish List',
      name: 'wishlist',
      desc: '',
      args: [],
    );
  }

  /// `Please enter all the values!`
  String get values_error {
    return Intl.message(
      'Please enter all the values!',
      name: 'values_error',
      desc: '',
      args: [],
    );
  }

  /// `Flat, House no, Building`
  String get flat_details {
    return Intl.message(
      'Flat, House no, Building',
      name: 'flat_details',
      desc: '',
      args: [],
    );
  }

  /// `Area, Street`
  String get street_details {
    return Intl.message(
      'Area, Street',
      name: 'street_details',
      desc: '',
      args: [],
    );
  }

  /// `Pincode`
  String get pincode {
    return Intl.message(
      'Pincode',
      name: 'pincode',
      desc: '',
      args: [],
    );
  }

  /// `Town/City`
  String get town_details {
    return Intl.message(
      'Town/City',
      name: 'town_details',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been placed!`
  String get order_placed {
    return Intl.message(
      'Your order has been placed!',
      name: 'order_placed',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get add_product {
    return Intl.message(
      'Add Product',
      name: 'add_product',
      desc: '',
      args: [],
    );
  }

  /// `Select Product Images`
  String get product_img {
    return Intl.message(
      'Select Product Images',
      name: 'product_img',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get product_description {
    return Intl.message(
      'Description',
      name: 'product_description',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get product_price {
    return Intl.message(
      'Price',
      name: 'product_price',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get product_quantity {
    return Intl.message(
      'Quantity',
      name: 'product_quantity',
      desc: '',
      args: [],
    );
  }

  /// `Sell`
  String get sell_button {
    return Intl.message(
      'Sell',
      name: 'sell_button',
      desc: '',
      args: [],
    );
  }

  /// `Product Added Successfully!`
  String get success_add {
    return Intl.message(
      'Product Added Successfully!',
      name: 'success_add',
      desc: '',
      args: [],
    );
  }

  /// `Account created! Login with the same credentials!`
  String get success_create {
    return Intl.message(
      'Account created! Login with the same credentials!',
      name: 'success_create',
      desc: '',
      args: [],
    );
  }

  /// `Eligible for FREE Shipping`
  String get free_shipping {
    return Intl.message(
      'Eligible for FREE Shipping',
      name: 'free_shipping',
      desc: '',
      args: [],
    );
  }

  /// `In Stock`
  String get in_stock {
    return Intl.message(
      'In Stock',
      name: 'in_stock',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Keep shopping for `
  String get keep_shop {
    return Intl.message(
      'Keep shopping for ',
      name: 'keep_shop',
      desc: '',
      args: [],
    );
  }

  /// `Delivery to `
  String get delivery {
    return Intl.message(
      'Delivery to ',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Deal of the day`
  String get best_deal {
    return Intl.message(
      'Deal of the day',
      name: 'best_deal',
      desc: '',
      args: [],
    );
  }

  /// `See all deals`
  String get all_deals {
    return Intl.message(
      'See all deals',
      name: 'all_deals',
      desc: '',
      args: [],
    );
  }

  /// `View order details`
  String get order_details {
    return Intl.message(
      'View order details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Details`
  String get purchase_details {
    return Intl.message(
      'Purchase Details',
      name: 'purchase_details',
      desc: '',
      args: [],
    );
  }

  /// `Tracking`
  String get tracking {
    return Intl.message(
      'Tracking',
      name: 'tracking',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Your order is yet to be delivered`
  String get pending_delivery {
    return Intl.message(
      'Your order is yet to be delivered',
      name: 'pending_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been delivered, you are yet to sign.`
  String get pending_signing {
    return Intl.message(
      'Your order has been delivered, you are yet to sign.',
      name: 'pending_signing',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `Your order has been delivered and signed by you.`
  String get signed {
    return Intl.message(
      'Your order has been delivered and signed by you.',
      name: 'signed',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Qty`
  String get qty {
    return Intl.message(
      'Qty',
      name: 'qty',
      desc: '',
      args: [],
    );
  }

  /// `Order Date:`
  String get order_date {
    return Intl.message(
      'Order Date:',
      name: 'order_date',
      desc: '',
      args: [],
    );
  }

  /// `Order ID:`
  String get order_id {
    return Intl.message(
      'Order ID:',
      name: 'order_id',
      desc: '',
      args: [],
    );
  }

  /// `Order Total:      $`
  String get order_total {
    return Intl.message(
      'Order Total:      \$',
      name: 'order_total',
      desc: '',
      args: [],
    );
  }

  /// `Deal Price: `
  String get deal_price {
    return Intl.message(
      'Deal Price: ',
      name: 'deal_price',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now {
    return Intl.message(
      'Buy Now',
      name: 'buy_now',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_cart {
    return Intl.message(
      'Add to Cart',
      name: 'add_cart',
      desc: '',
      args: [],
    );
  }

  /// `Rate The Product`
  String get product_rating {
    return Intl.message(
      'Rate The Product',
      name: 'product_rating',
      desc: '',
      args: [],
    );
  }

  /// `Enter your`
  String get enter {
    return Intl.message(
      'Enter your',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
