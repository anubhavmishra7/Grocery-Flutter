import 'package:flutter/material.dart';

class LikedWidget extends StatelessWidget {
  const LikedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            child: Text(
              "Liked Items will be shown here",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
