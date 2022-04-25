import 'package:flutter/material.dart';
// import 'package:materials_project/login.dart';
import 'package:materials_project/routes.dart';

void main() {
  runApp(const MaterialApp(
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}