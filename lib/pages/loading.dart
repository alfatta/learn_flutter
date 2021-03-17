import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    var url = Uri.https('www.worldtimeapi.org', '/api/ip');
    var response = await http.get(url);
    Map data = jsonDecode(response.body);

    String datetime = data['datetime'];
    int offset = data['raw_offset'];

    DateTime now = DateTime.parse(datetime);
    print('now : $now');

    now = now.add(Duration(seconds: offset));
    print('now : $now');
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
