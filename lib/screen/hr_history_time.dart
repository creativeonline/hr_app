import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HrHistoryTime extends StatefulWidget {
  @override
  _HrHistoryTimeState createState() => _HrHistoryTimeState();
}

class _HrHistoryTimeState extends State<HrHistoryTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
      ),
      body: body(context),
    );
  }
  Widget body(context){
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ประวัติบันทึกเวลา",
                        style: TextStyle(fontSize: 25),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60,top: 30),
                        child: Text("ชื่อพนักงาน",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Image.asset("assets/images/icon.png",fit: BoxFit.cover,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text("2",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564"

                    ),
                    Text("เวลา : 09:45 - 18:02 น."

                    ),
                    Text("สถานที่ : พฤกษ์ลดา"

                    ),
                  ],
                ),
              ),

            ],
          ),


          Container(
            height: 80,
            width: 3.0,
            color: Colors.grey,
            margin: const EdgeInsets.only(right: 260),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: Text("1",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564"

                    ),
                    Text("เวลา : 09:55 - 18:10 น."

                    ),
                    Text("สถานที่ : พฤกษ์ลดา"

                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("ประวัติย้อนหลัง")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("เลือกวันที่")
            ],
          ),
        ],
      ),
    );
  }
}
