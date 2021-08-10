import 'package:flutter/material.dart';
import 'package:grocery/about.dart';
import 'package:grocery/cart.dart';
import 'package:grocery/categorywidget.dart';
import 'package:grocery/contact.dart';
//import 'package:grocery/contact.dart';
import 'package:grocery/homewidget.dart';
import 'package:grocery/likedwidget.dart';
import 'package:grocery/methods.dart';
//import 'package:grocery/methods.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  ValueNotifier<int> _bottomIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            actions: [Icon(Icons.notifications_none_outlined)],
            title: Text("Grocery")),
        backgroundColor: Colors.black87,
        body: ValueListenableBuilder(
          builder: (BuildContext context, value, Widget? child) {
            switch (value) {
              case 0:
                return SafeArea(
                  child: HomeWidget(),
                );
              case 1:
                return SafeArea(child: CategoryWidget());
              case 2:
                return SafeArea(child: LikedWidget());
              case 3:
                return SafeArea(child: Cart());

              default:
                return SafeArea(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Page ?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
            }
          },
          valueListenable: _bottomIndex,
        ),
        // appBar: AppBar(title: Text('HomeScreen')),
        drawer: Drawer(
          child: ListView(
              children: ListTile.divideTiles(
            context: context,
            tiles: [
              DrawerHeader(
                child:
                    //CircleAvatar(backgroundColor: Colors.green),
                    Center(
                  child: Text(
                    "Go get'em",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.black),
              ),
              ListTile(
                title: Text(
                  "Contact",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Contact(context)));
                },
              ),
              ListTile(
                title: Text("About Us", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => About()));
                },
              ),
              ListTile(
                  title: Text("Logout", style: TextStyle(fontSize: 20)),
                  onTap: () => logOut(context)),
            ],
          ).toList()),
        ),
        bottomNavigationBar: ValueListenableBuilder<int>(
          valueListenable: _bottomIndex,
          builder: (context, value, child) {
            return BottomNavigationBar(
              onTap: (index) {
                _bottomIndex.value = index;
              },
              currentIndex: value,
              backgroundColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.green,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "Categories"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border), label: "Favourites"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Cart")
              ],
            );
            // body: Center(
            //   child: TextButton(
            //     onPressed: () => logOut(context),
            //     child: Text('Logout'),
            //   ),
            // ),
          },
        ));
  }
}
