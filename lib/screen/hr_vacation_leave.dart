import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'hr_history_vacation_leave.dart';

class HrVacationLeave extends StatefulWidget {
  @override
  _HrVacationLeaveState createState() => _HrVacationLeaveState();
}

class _HrVacationLeaveState extends State<HrVacationLeave> {


  String _selectedstartDate = "วันที่เริ่มต้น";
  String _selectedendDate = "วันที่สิ้นสุด";

  String valueChoose;
  List listItem = [
    "เต็มวัน","ครึ่งวัน"
  ];

  Future<Void> _openDatePicker(context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if(picked != null){
      setState(() {
        _selectedstartDate = DateFormat.yMMMd().format(picked).toString();
      });
    }
  }

  Future<Void> _openDateEndPicker(context) async{
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if(picked != null){
      setState(() {
        _selectedendDate = DateFormat.yMMMd().format(picked).toString();
      });
    }
  }

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
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  "บันทึกลาพักร้อน",
                  style: TextStyle(fontSize: 22),
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
                    padding: const EdgeInsets.only(left: 100,right: 100,bottom: 50),
                    child: Image.asset("assets/images/iconpicture.png",fit: BoxFit.cover,)
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 350,
                  height: 45,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1),
                      borderRadius: BorderRadius.circular(2.0)
                  ),
                  child: DropdownButton(
                    hint: Text("เลือกประเภท"),
                    dropdownColor: Colors.white,
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    isExpanded: true,
                    underline: SizedBox(),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    value: valueChoose,

                    onChanged: (newValue){
                      setState(() {
                        valueChoose = newValue;
                      });
                    },
                    items: listItem.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem),
                      );
                    }).toList(),

                  ),
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
                    child: Text(_selectedstartDate)),  //_startTime
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
                    child: Text(_selectedendDate)),  //_startTime
                onTap: (){
                  _openDateEndPicker(context);
                },
              ),
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
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Text("แสดงจำนวนวัน",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HrHistoryVacation()));
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
