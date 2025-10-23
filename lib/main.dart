import 'package:flutter/material.dart';
import 'package:uts_rifadwiutami_2410910040027/uts/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) =>LoginPage(),
        "/hal2" : (context)=>DaftarPage(),
        },
        initialRoute:  "/",
      // home: LoginPage(),
    );
  }
}

