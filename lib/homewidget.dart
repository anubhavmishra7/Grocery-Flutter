//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:grocery/aboutdonuts.dart';
import 'package:grocery/cakepop.dart';
import 'package:grocery/canape.dart';
//import 'package:grocery/about.dart';
//import 'package:grocery/aboutitems/honey.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    'Grocery store with several treasures',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),

                // CircleAvatar(
                //   backgroundColor: Colors.green,
                //   child: Icon(Icons.menu),
                //   foregroundColor: Colors.white,
                // ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                      height: 130,
                      width: double.infinity,
                      //padding: EdgeInsets.only(top: ),
                      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 30),
                            child: Text(
                              'Grab these offers asap!!',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            '10% Discount',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Products',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Donut()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //     fit: BoxFit.cover,
                                  //     image: AssetImage(
                                  //         'assets/images/honey.png')),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.blue,
                              width: 160,
                              height: 200,

                              child: Stack(
                                children: [
                                  Container(
                                    height: 170,
                                    child: Image.asset(
                                      "assets/images/donut.png",
                                      scale: 1,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 7,
                                    left: 0,
                                    right: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "  Donuts",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "\$40  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Cakepop()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //     fit: BoxFit.cover,
                                  //     image: AssetImage(
                                  //         'assets/images/honey.png')),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.blue,
                              width: 160,
                              height: 200,

                              child: Stack(
                                children: [
                                  Container(
                                    height: 170,
                                    child: Image.asset(
                                      "assets/images/cakepop.png",
                                      scale: 1,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 7,
                                    left: 0,
                                    right: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Cakepop",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "\$30  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Canape()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //     fit: BoxFit.cover,
                                  //     image: AssetImage(
                                  //         'assets/images/honey.png')),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.blue,
                              width: 160,
                              height: 200,

                              child: Stack(
                                children: [
                                  Container(
                                    height: 170,
                                    child: Image.asset(
                                      "assets/images/canape.png",
                                      scale: 1,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 7,
                                    left: 0,
                                    right: 0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "  Canape",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Text(
                                          "\$25  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //     fit: BoxFit.cover,
                                //     image: AssetImage(
                                //         'assets/images/honey.png')),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                            //color: Colors.blue,
                            width: 160,
                            height: 200,

                            child: Stack(
                              children: [
                                Container(
                                  height: 170,
                                  child: Image.asset(
                                    "assets/images/grain.png",
                                    scale: 1,
                                  ),
                                ),
                                Positioned(
                                  bottom: 7,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        " Grain",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "\$5  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                // image: DecorationImage(
                                //     fit: BoxFit.cover,
                                //     image: AssetImage(
                                //         'assets/images/honey.png')),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20)),
                            //color: Colors.blue,
                            width: 160,
                            height: 200,

                            child: Stack(
                              children: [
                                Container(
                                  height: 170,
                                  child: Image.asset(
                                    "assets/images/icecream.png",
                                    scale: 1,
                                  ),
                                ),
                                Positioned(
                                  bottom: 7,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "  IceCream",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        "\$1  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )

                // CircleAvatar(
                //   backgroundColor: Colors.green,
                //   child: Icon(Icons.notifications_none_outlined),
                //   foregroundColor: Colors.white,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
