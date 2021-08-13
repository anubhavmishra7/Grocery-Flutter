import 'package:flutter/material.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  _CategoryWidgetState createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Categories",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
            Container(
              //color: Colors.red,
              height: 60,
              //decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                    fillColor: Colors.red,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                    ),
                    hintText: "Search Your Product",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Daily Needs",
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/masalas.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'General',
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
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/honey.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Honey',
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
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/vegetables.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Vegetables',
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
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/cakepop.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Cakepop',
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
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/japanesefood.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Japanese',
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
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/grain.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Grain',
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/icecream.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Icecream',
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
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/donut.png')),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)),
                    //color: Colors.blue,
                    width: 160,
                    height: 200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 120, left: 20),
                        child: Text(
                          'Donut',
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
            // Padding(
            //   padding: const EdgeInsets.all(15),
            //   child: Container(
            //     height: 60,
            //     child: Row(
            //       // mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         CircleAvatar(
            //           backgroundColor: Colors.red,
            //           child: Icon(Icons.search),
            //         ),

            //         // TextField(
            //         //   decoration: InputDecoration(
            //         //       hintText: "Search Your Product",
            //         //       hintStyle: TextStyle(color: Colors.white)),
            //         // )
            //       ],
            //     ),
            //     decoration: BoxDecoration(
            //         color: Colors.red, borderRadius: BorderRadius.circular(20)),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
