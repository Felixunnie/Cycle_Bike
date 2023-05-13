import 'package:cycle_bike_mfu/cycle_bike_mfu_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

 void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const CycleBikeMFU_App());
}

