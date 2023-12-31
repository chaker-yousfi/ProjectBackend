import 'package:ecommerce_app_backend/common/widgets/bottom_bar.dart';
import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:ecommerce_app_backend/features/admin/screens/admin_screen.dart';
import 'package:ecommerce_app_backend/features/auth/screens/auth_screen.dart';
import 'package:ecommerce_app_backend/features/auth/services/auth_service.dart';
<<<<<<< HEAD
=======
import 'package:ecommerce_app_backend/features/home/screens/home_screen.dart';
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:ecommerce_app_backend/providers/user_provider.dart';
import 'package:ecommerce_app_backend/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
<<<<<<< HEAD
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

=======
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authService.getUserData(context);
  }

  // This widget is the root of your application.
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce App',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        useMaterial3: true, // can remove this line
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
