import 'package:flutter/material.dart';
import 'package:flutter_application_1/awalgetx.dart';
import 'package:flutter_application_1/listmap.dart';
import 'package:flutter_application_1/utama.dart';
import 'package:get/get.dart';
import 'listscreen.dart';
import 'inDec_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => const MyApp()),
        GetPage(name: "/indec", page: () => const InDecScreen()),
        GetPage(name: "/listscreen", page: () => const listscreen()),
        GetPage(name: "/listmap", page: () => const listmap()),
        GetPage(name: "/awalgetx", page: () => const awalgetx()),
      ],
      debugShowCheckedModeBanner: false,
      home: Utama(),
    );
  }
}
