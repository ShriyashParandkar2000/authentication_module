import 'package:authentication_module/AuthModules/SignUp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import 'Designs/design.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String _email, _password;
  BuildContext _c;

  @override
  Widget build(BuildContext context) {
    _c = context;

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 0,
        backgroundColor: Colors.orange[900],
        bottomOpacity: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu), color: Colors.black87, onPressed: () {}),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange[900],
            Colors.orange[800],
            Colors.orange[400]
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                        1,
                        Text(
                          "Student Login",
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                        1.3,
                        Text(
                          "Welcome Back",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          FadeAnimation(
                              1.4,
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Color.fromRGBO(225, 95, 27, .3),
                                          blurRadius: 20,
                                          offset: Offset(0, 10))
                                    ]),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        validator: (input) {
                                          if (input.isEmpty) {
                                            SnackBar(
                                                content: Text(
                                                    "please type and email"));
                                            return "please type and email";
                                          }
                                          return null;
                                        },
                                        onSaved: (input) => _email = input,
                                        decoration: InputDecoration(
                                            hintText: "Phone number",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color: Colors.grey[200]))),
                                      child: TextFormField(
                                        validator: (input) {
                                          if (input.isEmpty) {
                                            SnackBar(
                                                content: Text(
                                                    "please type a Password"));
                                            return "please enter password";
                                          }
                                          return null;
                                        },
                                        onSaved: (input) => _password = input,
                                        decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                        obscureText: true,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.5,
                              GestureDetector(
                                onTap: () {
                                  print("Forgot Password?");
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.6,
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StudentSignUP()));
                                },
                                child: GestureDetector(
                                  onTap: signIn,
                                  child: Container(
                                    height: 50,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 50),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.orange[900]),
                                    child: Center(
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          SizedBox(
                            height: 50,
                          ),
                          FadeAnimation(
                              1.7,
                              Text(
                                "Continue with Roomie",
                                style: TextStyle(color: Colors.grey),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: FadeAnimation(
                                    1.8,
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    StudentSignUP()));
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.blue),
                                        child: Center(
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Expanded(
                                child: FadeAnimation(
                                    1.9,
                                    GestureDetector(
                                      onTap: () {
                                        print('Not Student?');
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.black),
                                        child: Center(
                                          child: Text(
                                            "Not Student ?",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// Firebase method for SignIn
  Future<void> signIn() async {
    final formstate = _formkey.currentState;
    if (formstate.validate()) {
      // Login to firebase
      formstate.save();
      await Firebase.initializeApp();
      try {
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);

        Navigator.push(
            _c, MaterialPageRoute(builder: (context) => Home(user: user)));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
