import 'package:flutter/material.dart';
import 'login.dart';
import 'uyeOl.dart';
import 'sifremiUnuttum.dart';
import 'anaSayfa.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => login(),
      "/uyeOl": (context) => uyeOl(),
      "/login": (context) => login(),
      "/sifremiUnuttum": (context) => sifremiUnuttum(),
      "/anaSayfa": (context) => anaSayfa(),
    },
  ));
}
