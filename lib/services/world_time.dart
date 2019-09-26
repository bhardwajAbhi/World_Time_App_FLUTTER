import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {

  String location;  // location name for the UI
  String time;  // the time in that location
  String flag;  // url to an asset flag icon
  String url; // location url for API endpoint
  bool isDayTime; //true or false if daytime or not

  //constructor
  WorldTime ({this.location, this.flag, this.url});


  Future<void> getTime() async {

    try {
      // make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);

      // get properties from data
      String dateTime = data['datetime'];
      String offset = data['utc_offset'];

      // print(dateTime);
      // print(offset);

      //create a DateTime object
      DateTime now  = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset.substring(1,3)), minutes: int.parse(offset.substring(4,6))));

      isDayTime = (now.hour > 6 && now.hour < 20) ? true : false;

      //set the time property using DateFormat method obtained from intl dependency
      time = DateFormat.jm().format(now);

      print(time);
    }
    catch (e) {
      print("Error caught ----> $e");
      time = 'could not update time....';
    }


  }





}