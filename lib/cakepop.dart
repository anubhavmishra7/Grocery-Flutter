import 'package:flutter/material.dart';

class Cakepop extends StatefulWidget {
  const Cakepop({Key? key}) : super(key: key);
  // Donut(this.title,this.stream);
  // final String title;
  // final Stream<int> stream;

  @override
  _CakepopState createState() => _CakepopState();
}

class _CakepopState extends State<Cakepop> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else if (_counter == 0) print("0");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    height: 50,
                    width: 70,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/cakepop.png",
                scale: 2,
              ),
              Text(
                "Price : \$30",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  "Cakepop is a fried ring or globule of sweet dough that is either yeast leavened or chemically leavened. The dough is mixed and shaped, dropped into hot oil and fried, and glazed. Jam-filled doughnuts are called bismarks. Chemically-raised donuts are made with baking powder and are generally rather dense and cake-like. They are easily and quickly made.",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          incrementCounter();
                        },
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                          size: 60,
                        )),
                    GestureDetector(
                        onTap: () {
                          decrementCounter();
                        },
                        child: Icon(
                          Icons.remove_circle,
                          color: Colors.white,
                          size: 60,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 50),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red,
                        ),
                        //padding: EdgeInsets.all(5),
                        width: 150,
                        height: 60,

                        child: Center(
                          child: Text("Cart : $_counter",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 29)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
