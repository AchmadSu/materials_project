// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key:key);

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  String textUsername = "";
  String textPassword = "";
  String username = "Achmad Sutisna";
  String password = "password";

  void checkLogin(){
    if(textUsername == "" || textPassword == ""){
      Fluttertoast.showToast(
        msg: "Username or Password is empty. You have to enter them to Login!",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
      );
      // return;
    }

    else if(textUsername != username || textPassword != password){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            title: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration (
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(4)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget> [
                    Icon(
                      FontAwesomeIcons.triangleExclamation,
                      color: Colors.white,
                    ),
                    Text(
                      "  Login Failed",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                )
              )
            ), 
            content: Stack(
              // alignment: Alignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Image.asset(
                    'assets/img/3.jpg',
                    // height: 100,
                    // fit: BoxFit.cover,
                  ),
                ),
                const Text('Username or Password is not correct. \nPlease try again!'),
              ]
            ),
            actions: <Widget>[
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: FittedBox(
                  // constraints: const BoxConstraints(maxWidth: fit),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration (
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const <Widget>[
                        Icon(
                          FontAwesomeIcons.xmark,
                          color: Colors.white,
                        ),
                        Text(
                          '  Close',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ) 
              )
            ],
          );
        } 
      );
    }

    else if(textUsername == username && textPassword == password){
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
            title: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                decoration: BoxDecoration (
                   color: Colors.blue,
                   borderRadius: BorderRadius.circular(4)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget> [
                    Icon(
                      FontAwesomeIcons.circleCheck,
                      color: Colors.white,
                    ),
                    Text(
                      "  Login Successfully!",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                )
              )
            ), 
            content: Stack(
              // alignment: Alignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Image.asset(
                    'assets/img/4.jpg',
                    // height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Text('Welcome $username! \nPlease click the Continue button!'),
                )
              ]
            ),
            actions: <Widget>[
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/profile');
                },
                child: FittedBox(
                  // constraints: const BoxConstraints(maxWidth: fit),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration (
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const <Widget>[
                        Icon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.white,
                        ),
                        Text(
                          '  Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ) 
              )
            ],
          );
        } 
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Align(
      //     alignment: Alignment.center, child: Text("Login Page"),
      //   )
      // ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              // padding: const EdgeInsets.all(10),
              child: (
                Image.asset(
                  'assets/img/1.jpg',
                  // height: 100,
                  // width: 200,
                )
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),  
              )
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              // Icon(FontAwesomeIcons.cartPlus),
              child: TextField(
                onChanged: (x) => textUsername = x,
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                )  
              )
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                onChanged: (y) => textPassword = y,
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                )
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  //forgot password screen
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Raleway',
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: InkWell(
                onTap: () {
                  checkLogin();
                },
                child: Container(
                  padding: const EdgeInsets.all(0.0),
                  height: 60.0,//MediaQuery.of(context).size.width * .08,
                  width: 220.0,//MediaQuery.of(context).size.width * .3,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 233, 233, 233),
                        blurRadius: 4,
                        offset: Offset(8, 8)
                      )
                    ]
                  ),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                        child: Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      LayoutBuilder(builder: (context, constraints) {
                        print(constraints);
                        return Container(
                          height: constraints.maxHeight,
                          width: constraints.maxHeight,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10)
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.deepPurple,
                          ),
                        );
                      }),
                    ]
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              // margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: const EdgeInsets.all(20),
              child: const Text(
                'OR',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(221, 131, 131, 131)
                ),
              ),
            ),
            Container(
              height: 50,
              // margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 60.0,//MediaQuery.of(context).size.width * .08,
                  width: 220.0,//MediaQuery.of(context).size.width * .3,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(245, 245, 245, 245),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        child:
                          Image.asset(
                            'assets/img/2.png',
                          )
                      ),
                      const Expanded(
                        child: Text(
                          'Login with Google',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            color: Color.fromARGB(255, 75, 75, 75)
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "New Member? ",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  TextButton(
                    onPressed:(){

                    },
                    child: const Text(
                      'Register here',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Raleway',
                      ),
                    ),
                  )
                ],
              ) 
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Ecep Achmad Sutisna \u00a9 2022",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  color: Color.fromARGB(221, 77, 77, 77)
                ),
              ),
            )
          ]
        )
      )
    );
  }
}