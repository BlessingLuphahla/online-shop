import 'package:flutter/material.dart';
import 'package:shop/components/bottom_nav_bar.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  final Cart cart;
  const HomePage({super.key, required this.cart});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  static const TextStyle drawerTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    letterSpacing: 2,
  );

  static const double drawerIconSize = 25.0;
  static const Color drawerIconColor = Colors.white;
  static const EdgeInsets drawerPadding = EdgeInsets.only(left: 20, top: 25);

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      ShopPage(cart: widget.cart),
      CartPage(cart: widget.cart)
    ];

    void navigateBottomBar(index) {
      setState(() {
        selectedIndex = index;
      });
      print(selectedIndex);
    }

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(builder: (context) {
          return IconButton(
            style: const ButtonStyle(
              iconSize: WidgetStatePropertyAll(30),
            ),
            color: Colors.black,
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      border: BorderDirectional(bottom: BorderSide.none),
                    ),
                    margin: const EdgeInsets.all(25),
                    padding: const EdgeInsets.all(1),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        'assets/images/logo.jpg',
                        height: 400,
                        width: 400,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: drawerPadding,
                    child: ListTile(
                      leading: Icon(
                        color: drawerIconColor,
                        Icons.home,
                        size: drawerIconSize,
                      ),
                      title: Text(
                        'Home',
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: drawerPadding,
                    child: ListTile(
                      leading: Icon(
                        color: drawerIconColor,
                        Icons.info,
                        size: drawerIconSize,
                      ),
                      title: Text(
                        'About',
                        style: drawerTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: drawerPadding,
                child: ListTile(
                  leading: Icon(
                    color: drawerIconColor,
                    Icons.exit_to_app,
                    size: drawerIconSize,
                  ),
                  title: Text(
                    'LogOut',
                    style: drawerTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: pages[selectedIndex],
    );
  }
}
