import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:new_signup/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';



class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final username=TextEditingController();
  final password=TextEditingController();
  FirebaseAuth _auth=FirebaseAuth.instance;

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
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 10),
                            alignment: Alignment.bottomLeft,
                            child: InkWell(
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cont()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
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
                        'Fill the information below to Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * .50,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: ListView(
                      children: [
                        Center(
                          child: Container(
                              margin: EdgeInsets.only(top: 32),
                              child: Text(
                                'Sign Up Page',
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

                            decoration: InputDecoration(hintText: 'Name'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                          child: TextField(
                            controller: password,
                            decoration: InputDecoration(hintText: 'Password'),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .60,
                          margin: EdgeInsets.only(
                              top: 32, left: 15, right: 15, bottom: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(90)),
                          child: RaisedButton(
                              color: Colors.blue,
                              child: Text('Sign up',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(90)),
                              onPressed: () {
                                singUp();

                              }

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }

  Future<void> singUp() async{

    try{
      await _auth.createUserWithEmailAndPassword(email: username.text.toString(), password: password.text.toString());

      print("signUp");

    }
    catch(e){

    }
  }


}