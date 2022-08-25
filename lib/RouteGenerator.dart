import 'package:flutter/material.dart';
import 'package:mobile_engineering_project/views/Anuncios.dart';
import 'package:mobile_engineering_project/views/Login.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => Anuncios(),
        );
      case "/login":
        return MaterialPageRoute(
          builder: (_) => Login(),
        );
      default:
        _erroRota();
    }
    return null;
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Tela não encontrada"),
        ),
        body: Center(
          child: Text("Tela não encontrada"),
        ),
      );
    });
  }
}
