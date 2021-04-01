import 'package:flutter/material.dart';
import 'package:hr_app/screen/hr_overtime.dart';
import 'package:hr_app/screen/hr_sick.dart';
import 'package:hr_app/screen/test.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screen/hr_scan_qrcode_screen.dart';


void main() {
  var app = MyApp();

  runApp(app);
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Logo"),
      ),
      body: body(context),


    );
  }

  Widget body(context) {
    var size = MediaQuery.of(context).size;
    TextStyle mystyle = TextStyle(fontSize: 16);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10,bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("ชื่อพนักงาน",style: mystyle,),
                      Text("oxoxoxoxoxxoxoxo\noxoxxoxoxoxox",style: mystyle),
                      Text("oxoxoxoxoxxoxoxo\noxoxxoxoxoxox",style: mystyle),
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset("assets/images/icon.png",fit: BoxFit.cover,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(onPressed: ()  {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HrScanQrCodeScreen()));
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HrScanQrCodeScreen()));

              },
                child: Text("เข้างาน"),


              ),
              RaisedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HrScanQrCodeScreen()));
              },
                child:  Text("ออกงาน"),

              ),
              RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
              builder: (context) => HrOverTime()));
              },
                child: Text("โอที"),

              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.black,
                          width: size.width,
                          child: Text("ประวัติการบันทึกเวลา",
                            style: TextStyle(color: Colors.white),
                          ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                             Text("เข้า"),
                              Text(""),
                            ],
                          ),
                          Column(
                            children: [
                              Text("ออก"),
                              Text(""),
                            ],
                          ),
                          Column(
                            children: [
                              Text("สถานที่"),
                              Text("พฤกษ์ลดา"),

                            ],
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.black,
                        width: size.width,
                        child: Text("โควต้าคงเหลือ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("ลาป่วย"),
                              Text("ลากิจ"),
                              Text("ลาพักร้อน"),
                            ],
                          ),

                          Column(
                            children: [
                              Text("3 ครั้ง"),
                              Text("2 ครั้ง"),
                              Text("6 ครั้ง"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],

          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              children: [
                Container(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                        children:[
                          myButton("ลาป่วย",Icons.local_hospital),
                          myButton("ลากิจ",Icons.business_center_sharp),
                          myButton("ลาพักร้อน",Icons.car_repair),


                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                        children:[
                          myButton("ลาคลอด",Icons.child_care),
                          myButton("ลารับ\nราชการทหาร",Icons.person_outline),
                          myButton("ลาฝึกอบรม",Icons.fact_check),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                        children:[
                          myButton("ลาทำหมัน",Icons.pregnant_woman_outlined),
                          myButton("ประวัติลาป่วย",Icons.paste),
                          myButton("ประวัติลากิจ",Icons.history_edu_outlined),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                        children:[
                          myButton("ประวัติลาคลอด",Icons.child_friendly),
                          myButton("ประวัติลา\nรับราชการทหาร",Icons.perm_contact_cal_outlined),
                          myButton("ประวัติลา\nฝึกอบรม",Icons.padding),

                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start ,
                        children:[
                          myButton("ประวัติลาพักร้อน",Icons.beach_access),
                          myButton("ประวัติโอที",Icons.work),
                          myButton("ลาออก",Icons.exit_to_app),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start ,
                        children:[
                          myButton("",Icons.beach_access),
                          myButton("",Icons.work),
                          myButton("",Icons.exit_to_app),

                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: RaisedButton(onPressed: ()=>{
                  print('กดแล้ว')
                },
                  child: Text("กลับหน้าแรก"),

                ),
              ),
            ],
          ),

        ],


      ),
    );
  }
 Widget myButton(button,icon){

    return  SizedBox(
      width:135,
      height: 100,
      child: Column(
        children: [
          RaisedButton(
            child: Icon(icon),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => HrSick()));
            },
          ),
          Text(button)
        ],
      ),
    );
 }
}





