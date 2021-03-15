import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/choose_location.dart';
import 'package:learn_flutter/pages/home.dart';
import 'package:learn_flutter/pages/loading.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
      },
    ));
