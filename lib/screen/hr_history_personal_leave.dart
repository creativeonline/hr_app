import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HrHistoryPersonalLeave extends StatefulWidget {
  @override
  _HrHistoryPersonalLeaveState createState() => _HrHistoryPersonalLeaveState();
}

class _HrHistoryPersonalLeaveState extends State<HrHistoryPersonalLeave> {
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
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ประวัติลากิจ",
                        style: TextStyle(fontSize: 22),
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
              Padding(
                padding: const EdgeInsets.only(left: 10 ,bottom: 20),
                child: Text("รายการ",
                  style: TextStyle(fontSize: 20,color: Colors.red),
                ),
              ),
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
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("25",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 26 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไข้"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("1 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("10",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 12 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไอ"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("2 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("ไม่อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("25",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 26 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไข้"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("1 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("10",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 12 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไอ"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("2 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("ไม่อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("25",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 26 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไข้"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("1 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("10",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 12 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไอ"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("2 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("ไม่อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("25",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 26 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไข้"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("1 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 315,
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 100,
                padding: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle

                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("10",
                    style: TextStyle(fontSize: 30,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("มีนาคม 2564 \nถึง : 12 มีนาคม 2564"

                    ),
                    Text("คำอธิบาย : ไอ"

                    ),
                    Text("ประเภท : เต็มวัน",
                    ),
                    Text("2 วัน",
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text("ไม่อนุมัติ",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
