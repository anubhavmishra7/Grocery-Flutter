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
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(30)),
                    //padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 80,

                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/images/canape.png"),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 15, primary: Colors.white),
                              onPressed: () {},
                              child: Text("  3  ",
                                  style: TextStyle(color: Colors.black))),
                          Text("Prize :\$40",
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
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(30)),
                      //padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 80,

                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/cakepop.png"),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 15, primary: Colors.white),
                                onPressed: () {},
                                child: Text("  3  ",
                                    style: TextStyle(color: Colors.black))),
                            Text("Prize :\$100",
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
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(30)),
                      //padding: EdgeInsets.all(5),
                      width: double.infinity,
                      height: 80,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/icecream.png"),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    elevation: 15, primary: Colors.white),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryWidget()));
                                },
                                child: Text("  3  ",
                                    style: TextStyle(color: Colors.black))),
                            Text("Prize :\$30",
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
