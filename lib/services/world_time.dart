import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      var requestUri = Uri.https('www.worldtimeapi.org', '/api/timezones/$url');
      var response = await http.get(requestUri);

      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      int offset = data['raw_offset'];

      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(seconds: offset));

      time = now.toString();
    } catch (e) {
      print('caught error: $e');
      time = 'can\'t get time data';
    }
  }
}
