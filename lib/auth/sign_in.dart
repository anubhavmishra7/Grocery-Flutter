import 'package:flutter/material.dart';
import 'package:grocery/auth/sign_up.dart';
import 'package:grocery/homescreen.dart';
import 'package:grocery/methods.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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

                  //border: Border.all(width: 0),
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.png'),
              )),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 700,
                      //color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Text(
                              'Sign In to Continue',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Text(
                            'Grocery',
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Colors.red,
                                      offset: Offset(3, 3))
                                ]),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        top: 120, left: 8, right: 8),
                                    child: Form(
                                      autovalidateMode: AutovalidateMode.always,
                                      child: TextFormField(
                                        controller: _email,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                borderSide: BorderSide(
                                                    color: Colors.red)))),
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "Required";
                                          } else {
                                            return null;
                                          }
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Form(
                                    autovalidateMode: AutovalidateMode.always,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          top: 10, left: 8, right: 8),
                                      child: TextFormField(
                                        controller: _password,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 21),
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
                                                borderRadius:
                                                    BorderRadius.circular(40)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                                borderSide: BorderSide(
                                                    color: Colors.red)))),
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
                                ),
                                GestureDetector(
                                  //onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: SizedBox(
                                      height: 45,
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_email.text.isNotEmpty &&
                                              _password.text.isNotEmpty) {
                                            setState(() {
                                              isLoading = true;
                                            });
                                            logIn(_email.text, _password.text)
                                                .then((user) {
                                              if (user != null) {
                                                print("Login Succesfull");
                                                setState(() {
                                                  isLoading = false;
                                                });
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            Homescreen()));
                                              } else {
                                                print("Login Failed");
                                                setState(() {
                                                  isLoading = false;
                                                });
                                              }
                                            });
                                          } else {
                                            print("Fill form correctly");
                                          }
                                        },
                                        child: Text(
                                          'Login',
                                          style: TextStyle(fontSize: 22),
                                        ),
                                        style: ElevatedButton.styleFrom(),
                                      ),
                                    ),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => SignUp()));
                                    },
                                    child: Text(
                                      'New User?',
                                      style: TextStyle(fontSize: 15),
                                    ))
                              ],
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
