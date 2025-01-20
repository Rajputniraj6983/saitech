import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/admin/home_screen.dart';
import 'screen/engineer/engineer_face_screen.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: EngineerAttendanceScreen(),
    );
  }
}
