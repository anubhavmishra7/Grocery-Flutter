import 'package:flutter/material.dart';

class Donut extends StatelessWidget {
  const Donut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/donut.png"),
            Text(
              "Price - 100 Rs.",
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
            Text(
                " The doughnut is a fried ring or globule of sweet dough that is either yeast leavened or chemically leavened. The dough is mixed and shaped, dropped into hot oil and fried, and glazed. Jam-filled doughnuts are called bismarks. Batters vary and may be chocolate or lemon and include fruits such as blueberries, raisins, or nuts. Chemically-raised donuts are made with baking powder and are generally rather dense and cake-like. They are easily and quickly made. Yeast-raised doughnuts, which is leavened by the creation of carbon dioxide resulting from fermentation of yeast, are lighter in texture than chemically-raised doughnuts. They require several hours to produce.",
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
