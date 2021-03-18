import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      var requestUri = Uri.https('www.worldtimeapi.org', '/api/timezone/$url');
      var response = await http.get(requestUri);
      print('response : ${response.body}');

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      int offset = data['raw_offset'];

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(seconds: offset));

      isDaytime = now.hour > 6 && now.hour < 17;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('caught error: $e');
      time = 'can\'t get time data';
      isDaytime = false;
    }
  }
}
