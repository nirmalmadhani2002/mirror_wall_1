import 'package:flutter/material.dart';
import 'package:mirror_wall_1/screens/homepage.dart';
import 'package:mirror_wall_1/screens/web_page.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Web View",
      routes: {
        "/": (context) => const WebPage(),
        "web_load_page": (context) => const WebLoad(),
      },
    ),
  );
}