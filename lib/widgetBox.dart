import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

// สร้าง container ต้นแบบเอาไว้
// ignore: must_be_immutable
class widgetBox extends StatelessWidget {
  String title; //ชื่อสกุลเงิน/ รายการ
  double amount; //จำนวนเงิน
  Color color; //สีของกล่อง
  double size = 210; //ขนาดของกล่อง
  DateTime date;
  String img;

  widgetBox(this.title, this.amount, this.color, this.date,this.img);

  @override
  Widget build(BuildContext context) {
    // String numberDisplay = NumberFormat("#,###.##").format(date);
    String hmDisplay = DateFormat.Hm().format(date);
    String dateDisplay = DateFormat("dd/mm/yyyy").format(date);

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      height: size,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Text(
                  "$hmDisplay น.    $dateDisplay",
                  //'$numberDisplay / $numberDisplay',
                  //'${NumberFormat("#,###").format(amount)} / ${NumberFormat("#,###").format(amount)}',
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          Divider(indent: 1,height: 1,color: Colors.orange),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 80,child: Image.asset(img)),
              SizedBox(
                width: 130,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "จำนวน",
                          style: TextStyle(fontSize: 12),
                        ),
                        Expanded(
                            child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red
                          ),
                          textAlign: TextAlign.right,
                        ))
                      ],
                    ),
                    Divider(indent: 1,height: 1,color: Colors.orange,),
                    Row(
                      children: [
                        Text(
                          "ราคาต่อหน่วย",
                          style: TextStyle(fontSize: 12),
                        ),
                        Expanded(
                            child: Text(
                              "49.-",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                              ),
                              textAlign: TextAlign.right,
                            ))
                      ],
                    ),
                    Divider(indent: 1,height: 1,color: Colors.orange,),
                    Row(
                      children: [
                        Text(
                          "รวม",
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,),
                        ),
                        Expanded(
                            child: Text(
                              "49.-",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                              ),
                              textAlign: TextAlign.right,
                            ))
                      ],
                    ),
                    Divider(indent: 1,height: 1,color: Colors.orange,),
                    Row(
                      children: [
                        Text(
                          "Rider",
                          style: TextStyle(fontSize: 12),
                        ),
                        Expanded(
                            child: Text(
                              "ธานินทร์",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red
                              ),
                              textAlign: TextAlign.right,
                            ))
                      ],
                    ),
                    Divider(indent: 1,height: 1,color: Colors.orange,),
                  ],
                ),
              ),
              SizedBox(
                  width: 100,
                  height: 80,
                  child: Container(
                    color: Colors.black12,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "คุณเหลือเวลารับออเดอร์",
                          style: TextStyle(fontSize: 8),
                        ),
                        Text(
                          "59",
                          style: TextStyle(fontSize: 30, color: Colors.red),
                        ),
                        Text(
                          "วินาที",
                          style: TextStyle(
                              fontSize: 10, color: Colors.lightBlueAccent),
                        ),
                      ],
                    )),
                  )),
            ],
          ),
          SizedBox(height: 18,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("รับออเดอร์", style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
