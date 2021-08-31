import 'package:flutter/material.dart';
import 'package:ui/widgetBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'จัดการออเดอร์'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.red),
        ),
        actions: [
          IconButton(icon: Icon(Icons.notifications_none), onPressed: () {})
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.orangeAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ListTile(
                        title: Text(
                          "ออเดอร์มาใหม่",
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: Icon(Icons.arrow_drop_down),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        widgetBox("การแฟสด ลาเต้เย็น", 1000000, Colors.white,
                            DateTime.now(), "assets/images/กุ้งเผา.jpg"),
                        widgetBox("ชาไข่มุก", 10, Colors.white, DateTime.now(),
                            "assets/images/ผัดกะเพรา.jpg"),
                        widgetBox("ชานมไต้หวัน", 500, Colors.white,
                            DateTime.now(), "assets/images/ผัดไทย.jpg"),
                        widgetBox("การแฟสด ลาเต้เย็น", 1000000, Colors.white,
                            DateTime.now(), "assets/images/กุ้งเผา.jpg"),
                        widgetBox("ชาไข่มุก", 10, Colors.white, DateTime.now(),
                            "assets/images/ผัดกะเพรา.jpg"),
                        widgetBox("ชานมไต้หวัน", 500, Colors.white,
                            DateTime.now(), "assets/images/ผัดไทย.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
