import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
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
    var size = MediaQuery.of(context).size;
    TextStyle mystyle = TextStyle(fontSize: 18);
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
                            style: mystyle,
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
                          child: Text("โควต้าคงเหลือ",
                            style:TextStyle(color: Colors.white)
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text("ลาป่วย"),
                                Text("ลากิจ"),
                                Text("ลาพักร้อน"),
                                Text("ลาคลอด"),
                                Text("ลารับราชการทหาร"),
                                Text("ลาฝึกอบรม"),
                                Text("ลาทำหมัน"),
                              ],
                            ),

                            Column(
                              children: [
                                Text("3 ครั้ง"),
                                Text("2 ครั้ง"),
                                Text("6 ครั้ง"),
                                Text("2 ครั้ง"),
                                Text("1 ครั้ง"),
                                Text("9 ครั้ง"),
                                Text("1 ครั้ง"),
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
          ],
        ),
    );
  }
}
