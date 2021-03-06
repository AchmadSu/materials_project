import 'package:flutter/material.dart';
import 'package:materials_project/login.dart';
import 'package:materials_project/profile.dart';
// import 'package:materials_project/main.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginPage());
        // break;
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      // break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text('Error Page')),
      );
    });
  }
}