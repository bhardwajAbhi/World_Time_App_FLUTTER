import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {



  void setupWorldTime() async {

    WorldTime instance = new WorldTime(location: 'Kolkata', flag: 'India.png', url: 'Asia/Kolkata');
    await instance.getTime();

    // after successfully fetching the time, navigating to home page and passing the fetched data through below arguments
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
    });

  }


  // this method is best suitable for making API request at the beginning
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(child: Text('loading...')),
    );
  }
}
