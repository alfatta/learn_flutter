import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    print('start getData');
    await Future.delayed(Duration(seconds: 3), () {
      print('after 3 seconds');
    });
    await Future.delayed(Duration(seconds: 2), () {
      print('after 2 seconds');
    });
    print('after starting Future Delayed');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState func ran');
    getData();
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose func ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build func ran');

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('Counter is $counter'),
      ),
    );
  }
}
