//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grocery/categorywidget.dart';
import 'dart:async';
import 'package:razorpay_flutter/razorpay_flutter.dart';

//import 'package:grocery/aboutdonuts.dart';
StreamController<int> streamController = StreamController<int>();

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _counterone = 0;
  int _countertwo = 0;
  int _counterthree = 0;
  void incrementCounterOne() {
    setState(() {
      _counterone = _counterone + 1;
    });
  }

  void decrementCounterOne() {
    setState(() {
      if (_counterone > 0) {
        _counterone--;
      } else if (_counterone == 0) print("0");
    });
  }

  void incrementCounterTwo() {
    setState(() {
      _countertwo = _countertwo + 1;
    });
  }

  void decrementCounterTwo() {
    setState(() {
      if (_countertwo > 0) {
        _countertwo--;
      } else if (_countertwo == 0) print("0");
    });
  }

  void incrementCounterThree() {
    setState(() {
      _counterthree = _counterthree + 1;
    });
  }

  void decrementCounterThree() {
    setState(() {
      if (_counterthree > 0) {
        _counterthree--;
      } else if (_counterthree == 0) print("0");
    });
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _counter = _counter + 1;
  //   });
  // }
  late Razorpay _razorpay;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() {
    var options = {
      'key': 'rzp_test_SKncRpp5M0h7Xx',
      'amount': 15000,
      'name': 'Anubhav',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)),
                    //padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 80,

                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/canape.png"),
                          IconButton(
                            onPressed: () {
                              incrementCounterOne();
                            },
                            icon: Icon(Icons.add_circle_outlined,
                                color: Colors.white),
                            iconSize: 32,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 15, primary: Colors.white),
                              onPressed: () {},
                              child: Text("$_counterone",
                                  style: TextStyle(color: Colors.black))),
                          IconButton(
                            onPressed: () {
                              decrementCounterOne();
                            },
                            icon: Icon(Icons.remove_circle_outlined,
                                color: Colors.white),
                            iconSize: 32,
                          ),
                          Text("Price:\$40   ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      //padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 80,

                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/cakepop.png"),
                            IconButton(
                              onPressed: () {
                                incrementCounterTwo();
                              },
                              icon: Icon(Icons.add_circle_outlined,
                                  color: Colors.white),
                              iconSize: 32,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 20, primary: Colors.white),
                                onPressed: () {},
                                child: Text("$_countertwo",
                                    style: TextStyle(color: Colors.black))),
                            IconButton(
                              onPressed: () {
                                decrementCounterTwo();
                              },
                              icon: Icon(Icons.remove_circle_outlined,
                                  color: Colors.white),
                              iconSize: 32,
                            ),
                            Text("Price:\$100  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30)),
                      //padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/icecream.png"),
                            IconButton(
                              onPressed: () {
                                incrementCounterThree();
                              },
                              icon: Icon(Icons.add_circle_outlined,
                                  color: Colors.white),
                              iconSize: 32,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 20, primary: Colors.white),
                                onPressed: () {},
                                child: Text("$_counterthree",
                                    style: TextStyle(color: Colors.black))),
                            IconButton(
                              onPressed: () {
                                decrementCounterThree();
                              },
                              icon: Icon(Icons.remove_circle_outlined,
                                  color: Colors.white),
                              iconSize: 32,
                            ),
                            Text("Price:\$35   ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 28.0),
                    child: Container(
                      //padding: EdgeInsets.only(top: 20),
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            openCheckout();
                          },
                          child: Text(
                            'Proceed to Payment',
                            style: TextStyle(fontSize: 19),
                          )),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CategoryWidget()));
                      },
                      child: Text(
                        "Add More",
                        style: TextStyle(fontSize: 20),
                      ))
                  //Text("Quantity - 1 + ")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
