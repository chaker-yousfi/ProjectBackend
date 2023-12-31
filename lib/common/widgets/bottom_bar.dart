<<<<<<< HEAD
=======
import 'package:badges/badges.dart' as badges;
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:ecommerce_app_backend/constants/global_variables.dart';
import 'package:ecommerce_app_backend/features/account/screens/account_screen.dart';
import 'package:ecommerce_app_backend/features/home/screens/home_screen.dart';
import 'package:ecommerce_app_backend/providers/user_provider.dart';
<<<<<<< HEAD
import 'package:badges/badges.dart';
=======
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const AccountScreen(),
<<<<<<< HEAD
=======
    const Center(
      child: Text('Cart Page'),
    ),

     const AccountScreen(),
    //  const CartSceen(),
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    // final userCartLen = context.watch<UserProvider>().user.cart.length;

>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: '',
          ),
          // ACCOUNT
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_outline_outlined,
              ),
            ),
            label: '',
          ),
          // CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariables.selectedNavBarColor
                        : GlobalVariables.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
<<<<<<< HEAD
              // child: Badge(
              //   elevation: 0,
              //   badgeContent: Text('2'),
              //   badgeColor: Colors.white,
              //   child: const Icon(
              //     Icons.shopping_cart_outlined,
              //   ),
              // ),
=======
              child: const badges.Badge(
                badgeContent: Text('3'),
                badgeStyle: badges.BadgeStyle(
                  elevation: 0,
                  badgeColor: Colors.white,
                ),
                child: const Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
>>>>>>> 77cec44db4499a9bd057cf0dea2f7378041c7cbf
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
