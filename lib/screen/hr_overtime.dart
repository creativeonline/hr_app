import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'hr_history_overtime.dart';

class HrOverTime extends StatefulWidget {
  @override
  _HrOverTimeState createState() => _HrOverTimeState();
}

class _HrOverTimeState extends State<HrOverTime> {

  String _selectedDate = "เลือกวันที่";
  String _startTime = "เวลาเริ่มต้น";
  String _endTime = "เวลาสิ้นสุด";


  Future<Void> _openDatePicker(context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if(picked != null){
      setState(() {
        _selectedDate = DateFormat.yMMMd().format(picked).toString();
      });
    }
  }
  Future<void> _openTimePicker(BuildContext context) async {
    final TimeOfDay result = await showTimePicker(
        context: context, initialTime: TimeOfDay.now() );
    if (result != null) {
      setState(() {
        _startTime = result.format(context);
      });
    }
  }

  Future<void> _openTimeEndPicker(BuildContext context) async {
    final TimeOfDay result = await showTimePicker(
        context: context, initialTime: TimeOfDay.now() );
    if (result != null) {
      setState(() {
        _endTime = result.format(context);
      });
    }
  }


  String val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Logo"),
        ),
        body: body(context));

  }
  Widget body(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  "บันทึกโอที",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                    width: 350,
                    height: 45,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(2.0)),
                    ),
                    child: Text(_selectedDate)),  //_startTime
                onTap: (){
                  _openDatePicker(context);
                },
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                  width: 350,
                    height: 45,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(2.0)),
                    ),
                    child: Text(_startTime)),  //_startTime
                onTap: (){
                  _openTimePicker(context);
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Container(
                     width: 350,
                     height: 45,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                          Radius.circular(2.0)),
                    ),
                    child: Text(_endTime)),
                    onTap: (){
                      _openTimeEndPicker(context);
                    },
                ),  //_endTime
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                  height: 45,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'คำอธิบาย'
                      ),
              ),
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20,bottom: 30),
                child: Text("แสดงชั่วโมงและจำนวนเงินค่าโอที",
                  style: TextStyle(fontSize: 16,color: Colors.red,
                ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HrHistoryOverTime()));
              },
                child: Text("ส่ง"),

              ),

            ],
          ),
        ],
      ),
    );
  }


}
