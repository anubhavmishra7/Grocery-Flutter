//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:grocery/methods.dart';

import '../homescreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: isLoading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.height / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.png'))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 600,
                      width: double.infinity,
                      child: Column(children: [
                        Text(
                          'Sign Up!',
                          style: TextStyle(
                              fontSize: 50,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: TextFormField(
                            controller: _name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              //_name;
                            },
                            decoration: (InputDecoration(
                                //hoverColor: Colors.white,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(
                                    Icons.account_circle,
                                    color: Colors.blue,
                                  ),
                                ),
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide:
                                        BorderSide(color: Colors.red)))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22.0),
                          child: TextFormField(
                            controller: _email,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                              //_email;
                            },
                            decoration: (InputDecoration(
                                //hoverColor: Colors.white,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.blue,
                                  ),
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide:
                                        BorderSide(color: Colors.red)))),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Required";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        Form(
                          autovalidateMode: AutovalidateMode.always,
                          child: Container(
                            //padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                            child: TextFormField(
                              controller: _password,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              obscureText: true,
                              onChanged: (value) {
                                //_password;
                              },
                              decoration: (InputDecoration(
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      borderSide:
                                          BorderSide(color: Colors.red)))),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Required";
                                } else if (value.length < 6) {
                                  return "Password of atleast 6";
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                        GestureDetector(
                          // onTap: () {
                          //   if (_name.text.isNotEmpty &&
                          //       _email.text.isNotEmpty &&
                          //       _password.text.isNotEmpty) {
                          //     setState(() {
                          //       isLoading = true;
                          //     });
                          //     createAccount(
                          //             _name.text, _email.text, _password.text)
                          //         .then((user) {
                          //       if (user != null) {
                          //         setState(() {
                          //           isLoading = false;
                          //         });
                          //         print("Login Successfull");
                          //       } else {
                          //         print("Login Failed");
                          //       }
                          //     });
                          //   } else {
                          //     print("Please enter Fields");
                          //   }
                          // },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 38.0),
                            child: SizedBox(
                                height: 60,
                                width: 300,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_name.text.isNotEmpty &&
                                          _email.text.isNotEmpty &&
                                          _password.text.isNotEmpty) {
                                        setState(() {
                                          isLoading = true;
                                        });
                                        createAccount(_name.text, _email.text,
                                                _password.text)
                                            .then((user) {
                                          if (user != null) {
                                            setState(() {
                                              isLoading = false;
                                            });
                                            print(
                                                "Account Created Successfully");
                                          } else {
                                            print("Login Failed");
                                          }
                                        });
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (_) => Homescreen()));
                                      } else {
                                        print("Please enter Fields");
                                      }
                                    },
                                    child: Text(
                                      'Create Account',
                                      style: TextStyle(fontSize: 20),
                                    ))),
                          ),
                        ),
                        // Widget field(Size size ,String hintText,IconData icon, TextEditingController cont)
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 20),
                            ))
                      ])),
                ],
              ),
            ),
    );
  }
}
