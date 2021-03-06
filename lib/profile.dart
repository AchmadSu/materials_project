// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key:key);

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  String textUsername = "";
  String textPassword = "";
  String username = "Ecep Achmad Sutisna";
  String password = "password";

  void checkEducation(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration (
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget> [
                  Icon(
                    FontAwesomeIcons.school,
                    color: Colors.white,
                  ),
                  Text(
                    "  Educational History",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
              )
            )
          ),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Image.asset(
                'assets/img/6.jpg',
                // height: 100,
                // fit: BoxFit.cover,
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Politeknik TEDC Bandung',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'SMK Insan Mandiri',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'SMP Negeri 26 Bandung',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'SD Yayasan Amal Keluarga',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ], 
        );
      } 
    );
  }

  void checkOrganization(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration (
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget> [
                  Icon(
                    FontAwesomeIcons.peopleGroup,
                    color: Colors.white,
                  ),
                  Text(
                    "  Organization Experience",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
              )
            )
          ),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Image.asset(
                'assets/img/8.jpg',
                // height: 100,
                // fit: BoxFit.cover,
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Member of Organisasi Intra Sekolah SMK Insan Mandiri',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Leader of Muda Mahardika Unit 13',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Member of Relawan Covid Cigugurgirang',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Member of Muda Mahardika Cigugurgirang',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ], 
        );
      } 
    );
  }

  void checkWork(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration (
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget> [
                  Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  Text(
                    "  Work Experience",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
              )
            )
          ),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Image.asset(
                'assets/img/7.jpg',
                // height: 100,
                // fit: BoxFit.cover,
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Back Office of PT. Hardja Gunatama Lestari',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ], 
        );
      } 
    );
  }

  void checkHobbies(){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return SimpleDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          title: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration (
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(4)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget> [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "  Hobbies",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
              )
            )
          ),
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Image.asset(
                'assets/img/9.jpg',
                // height: 100,
                // fit: BoxFit.cover,
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Futsal',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Graphic Designing',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
            SimpleDialogOption(
              onPressed: (){
                // Navigator.pop(context);
              },
              child: const Text(
                'Programming',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  color: Colors.black54
                ),
              ),
            ),
          ], 
        );
      } 
    );
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
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap:(){
                      Navigator.pushNamed(context, '/');
                    },
                    child : Row(
                      children: <Widget> [
                        const Icon(
                          Icons.arrow_back,
                          color: Color.fromARGB(221, 51, 51, 51),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: const Text(
                            "Back",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                  InkWell(
                    onTap:(){},
                    child : Row(
                      children: <Widget> [
                        const Icon(
                          Icons.edit,
                          color: Color.fromARGB(221, 51, 51, 51),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: const Text(
                            "Edit",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              color: Colors.black54
                            ),
                          ),
                        ),
                      ],
                    )
                  )  
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/img/5.jpeg',
                  ),
                radius: 75,
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              title: Center(
                child: Text(
                  username,
                  style: const TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: Colors.purple
                  ),
                ),
              ),
              subtitle: const Center(
                child: Text(
                  "Informatics Student",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    color: Color.fromARGB(137, 146, 146, 146)
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.phone_android,
                    color: Color.fromARGB(135, 73, 73, 73)
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Text(
                      "0896-5842-0438",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Color.fromARGB(135, 73, 73, 73)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  const Icon(
                    Icons.mail_outline,
                    color: Color.fromARGB(135, 73, 73, 73)
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: const Text(
                      "ecepentis@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        // fontWeight: FontWeight.bold,
                        color: Color.fromARGB(135, 73, 73, 73)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(75, 20, 75, 20),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3, color: Color.fromARGB(61, 158, 158, 158)
                  )
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 1),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed:() {},
                      icon: const Icon(FontAwesomeIcons.message),
                      color: Colors.purple,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      border: Border.all(color: Colors.purple, width: 1),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      boxShadow: const[
                        BoxShadow(
                          color: Colors.purpleAccent,
                          blurRadius: 4,
                          offset: Offset(0, 6), // Shadow position
                        ),
                      ],
                    ),
                    child: OutlinedButton(
                      child: const Text(
                        "Settings",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(width: 1, color: Colors.transparent),
                        primary: Colors.purple,
                        minimumSize: const Size(100, 50),
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: (){},
                    )
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 1),
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      onPressed:() {},
                      icon: const Icon(FontAwesomeIcons.shareNodes),
                      color: Colors.purple,
                    ),
                  )
                ],
              ),
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: InkWell(
                onTap: (){
                  checkEducation();
                },
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.school_outlined,
                        color: Colors.purpleAccent,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Educational History",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: InkWell(
                onTap: (){},
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.male,
                        color: Colors.purpleAccent,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Male",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: InkWell(
                onTap: (){
                  checkOrganization();
                },
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.people,
                        color: Colors.purpleAccent,
                      ),
                        Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Organization Experience",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: InkWell(
                onTap: (){
                  checkWork();
                },
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.work,
                        color: Colors.purpleAccent,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Work Experience",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 3, color: Color.fromARGB(61, 158, 158, 158)
                  )
                )
              ),
              child: InkWell(
                onTap: (){
                  checkHobbies();
                },
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.purpleAccent,
                      ),
                        Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Hobbies",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container( 
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/');
                },
                child:
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Icon(
                        Icons.logout_outlined,
                        color: Colors.red,
                      ),
                        Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          ),
                        ),
                      ),
                    ],
                  ),
                ) 
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
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