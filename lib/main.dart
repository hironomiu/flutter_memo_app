import 'package:flutter/material.dart';
import 'pages/top_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   primaryColor: Colors.green,
      //   scaffoldBackgroundColor: Colors.green,
      // ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Colors.green,
        primaryColor: Colors.blue,
      ),
      home: const TopPage(),
    );
  }
}
