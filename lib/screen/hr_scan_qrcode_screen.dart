import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hr_app/screen/scan.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import 'hr_camera_screen.dart';


class HrScanQrCodeScreen extends StatefulWidget {
  @override
  _HrScanQrCodeScreenState createState() => _HrScanQrCodeScreenState();
}

class _HrScanQrCodeScreenState extends State<HrScanQrCodeScreen> {


  double distance;
  var _location = TextEditingController();



  @override
  void initState() {
    getLocation();
    super.initState();
  }

  getLocation () async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _location.text = '${position.latitude},${position.longitude}';
      distance = calculateDistance(position.latitude,position.longitude,13.7120441,100.7913766);
      // DateTime _now = DateTime.now();
      // String now = DateFormat("yyyy-MM-dd").format(DateTime.now());
      // print('วันที่: $now');
      // print('เวลา: ${_now.hour}:${_now.minute}:${_now.second}.${_now.millisecond}');
    });
    print(distance);
    print(position);
  }

  double calculateDistance(lat1,long1,lat2,long2) {
    double distance = 0;

    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((long2 - long1) * p)) / 2;
    distance = 12742 * sin(sqrt(a));
    if(distance <= 0.2){
      print("อยู่ในพื้นที่");
    }else{
      print("อยู่นอกพื้นที่");
    }
    return distance;
  }

  // Future<Position> _determinePosition() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;
  //
  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return Future.error('Location services are disabled.');
  //   }
  //
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error(
  //         'Location permissions are permantly denied, we cannot request permissions.');
  //   }
  //
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission != LocationPermission.whileInUse &&
  //         permission != LocationPermission.always) {
  //       return Future.error(
  //           'Location permissions are denied (actual value: $permission).');
  //     }
  //   }
  //
  //   return await Geolocator.getCurrentPosition();
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Logo"),
        ),
        body: body(context)
    );
  }
    Widget body(context){
      return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,bottom: 60),
                    child: Text("สแกนคิวอาร์โค้ด",
                      style: TextStyle(fontSize: 25),
                    ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 100,right: 100,bottom: 100),
                    child: Image.asset("assets/images/iconscanner.png",fit: BoxFit.cover,)
                  ),
                  ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: 55,
                  width: 300,
                  child: RaisedButton(
                    onPressed: () async{
                       final result = await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context)=>Scan(),
                                                        ),
                                                      );

                       print('resultsssssss=>${result}');

                        result.then((curranttime){
                          assert(curranttime != null);

                          print('ดู => ${curranttime}');
                        });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: Colors.black12,width: 2.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("สแกน",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),

                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("กรุณากดปุ่มสแกน",
                      style: TextStyle(fontSize: 25, color:Colors.red)),
                  ),
              ],
            ),
          ],
        ),
      );
    }
}
