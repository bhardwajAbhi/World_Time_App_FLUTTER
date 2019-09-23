import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  @override
  Widget build(BuildContext context) {
    print ('Build function called');
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Screen'),
        centerTitle: true,
      ),




    );
  }
}
