import 'package:flutter/material.dart';
import 'package:world_time_app/screens/home.dart';
import 'package:world_time_app/screens/loading.dart';
import 'package:world_time_app/screens/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',  // this property is for testing purpose

  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
  },
));
