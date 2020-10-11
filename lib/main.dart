import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:clickabletext/clickabletext.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'Secondpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Cont());
}

class Cont extends StatefulWidget {
  @override
  _ContState createState() => _ContState();
}

class _ContState extends State<Cont> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landingscreen(),
    );
  }
}

class Landingscreen extends StatefulWidget {

  @override
  _LandingscreenState createState() => _LandingscreenState();
}

class _LandingscreenState extends State<Landingscreen> {
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('lib/img/pic1.jpg'),
            fit: BoxFit.fill,
          )),
          child: Center(
            child: ListView(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          "Dite & Guru",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            //decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      Divider(
                        indent: 120,
                        endIndent: 115,
                        color: Colors.white,
                        thickness: 1,
                      ),
                      Text(
                        'CALCULATE EVERY BITE',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 50),
                      child: Text(
                        'Fill the information below to login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .80,
                    height: MediaQuery.of(context).size.height * .50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListView(
                      children: [
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 32),
                              child: Text(
                                'Login Account',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextField(
                            controller: username,
                            decoration:
                                InputDecoration(hintText: 'Username or Email'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: TextField(
                            controller: password,
                            decoration: InputDecoration(hintText: 'Password'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Incase you forgot password',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * .60,
                          margin: EdgeInsets.only(top: 32, left: 15, right: 15),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(90)),
                          child: RaisedButton(
                            color: Colors.blue,
                            child: Text('Login',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(90)),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 32),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 12),
                                child: Icon(
                                  Icons.face,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.email,
                                  color: Colors.red,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 1),
                  height: 50,
                  width: 50,
                  child: Text(
                    "Don't have an account yet",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(bottom: 50),
                  child: InkWell(
                      child: Text(
                        'Click Here',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontStyle: FontStyle.italic),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>SecondPage()),
                        );
                      }),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
