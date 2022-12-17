import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'practice_work/ecomerce_practice.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.grey,
      backgroundColor: Colors.grey,
    ),
    useInheritedMediaQuery: false,
    title: "ANAAS",
    color: Colors.red,
    debugShowCheckedModeBanner: false,
    home: EcommerceScreen(),
  ));
}
