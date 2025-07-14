import 'package:controle_esp/widgets/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async{
  await dotenv.load();
  runApp(const MainScreen());
}


