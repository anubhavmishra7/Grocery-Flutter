import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                Container(
                  child: Text(
                    "This grocery store is a retail establishment that sells food and other household goods. Grocery stores can be independent or part of corporate chains, and they offer a variety of products and services, including prepared foods and culturally specific ingredients. Supermarkets, which are generally chain stores, often have a wider selection of brand-name products and departments; for example, they may have a floral department or pharmacy.Whether a grocery store is large or small, or independent or part of a corporate chain, it typically has some common features. For example, most grocery stores have departments including the following: Grocery (non-refrigerated foods) Frozen foods Dairy Meat and seafood (sometimes separate departments) Deli and prepared foods Produce Health, beauty, and wellness Front end (checkout and bagging) ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
