import 'package:flutter/material.dart';

class Honey extends StatelessWidget {
  const Honey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/honey.png"),
            Text(
              "Price - 200 Rs.",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            Text(
                'Honey is a pretty amazing substance and there is a lot more to it than just a sweet tasting treat. Honey plays a crucial role in the life of a honey bee and can also be very beneficial to the human body.',
                style: TextStyle(color: Colors.white, fontSize: 18)),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                //padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 60,
                color: Colors.deepOrange,
                child: Center(
                  child: Text("Add to Cart",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
