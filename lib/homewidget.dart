//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:grocery/aboutitems/aboutdonuts.dart';
//import 'package:grocery/about.dart';
import 'package:grocery/aboutitems/honey.dart';

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
                                  MaterialPageRoute(builder: (_) => Honey()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/honey.png')),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              //color: Colors.blue,
                              width: 160,
                              height: 200,
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 120, left: 20),
                                  child: Text(
                                    "Honey",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => Donut()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/donut.png')),
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 160,
                              height: 200,
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 120, left: 5),
                                  child: Text(
                                    ' Donuts ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                          )
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
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/canape.png')),
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            //color: Colors.blue,
                            width: 160,
                            height: 200,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 140, left: 5),
                                child: Text(
                                  'Canape',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/grain.png'))),
                            width: 160,
                            height: 200,
                            child:
                                //child: Image.asset('assets/images/grain.png')
                                Padding(
                              padding:
                                  const EdgeInsets.only(top: 140, left: 20),
                              child: Text(
                                'Grains',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ),
                          )
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
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        'assets/images/icecream.png')),
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            //color: Colors.blue,
                            width: 160,
                            height: 200,
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 120, left: 0),
                                child: Text(
                                  'Ice Cream',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
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
