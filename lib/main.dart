import 'package:flutter/material.dart';
// import 'package:flutter_application_1/CafeMenu.dart';
import 'MoneyBox.dart';

void main() {
  var app = runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: MyHome(),
      theme: ThemeData(primarySwatch: Colors.amber),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // List<CafeMenu> menu = [
  //   CafeMenu('mericano', 50, 'assets/images/menu1.jpg'),
  //   CafeMenu('Cappuccino', 60, 'assets/images/menu2.jpg'),
  //   CafeMenu('Latte', 65, 'assets/images/menu3.jpg'),
  // ];
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //   home : Scaffold(
  //     appBar: AppBar(
  //       title: Text('เลือกเมนูเครื่องดื่ม')),
  //     body: ListView.builder(
  //         itemCount: menu.length,
  //         itemBuilder: (BuildContext context, int index){
  //           CafeMenu drink = menu[index];
  //           return ListTile(
  //             leading: Image.asset(drink.img),
  //             title: Text(drink.name,style: TextStyle(fontSize: 30),),
  //           subtitle: Text('ราคา' + drink.price.toString()+ 'บาท',style: TextStyle(fontSize: 24),
  //           ));
  //         }
  //         )),
  //       theme: ThemeData(primarySwatch: Colors.green));
  // }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Account')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MoneyBox('ยอดคงเหลือ',5000.55, Colors.lightBlue,150),
              SizedBox(height: 5,),
              MoneyBox('รายรับ',7000.678, Colors.grey,150),
              SizedBox(height: 5,),
              MoneyBox('รายจ่าย',2000, Colors.amber,150),
              
              // Container(
              //   padding: const EdgeInsets.all(10.0),
              //   decoration: BoxDecoration(
              //       color: Colors.lightBlue,
              //       borderRadius: BorderRadius.circular(10)),
              //   height: 150,
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Text(
              //         'ยอดคงเหลือ',
              //         style: TextStyle(
              //             fontSize: 26,
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold),
              //       ),
              //       Expanded(
              //           child: Text(
              //         '5000',
              //         style: TextStyle(
              //             fontSize: 26,
              //             color: Colors.white,
              //             fontWeight: FontWeight.bold),
              //         textAlign: TextAlign.right,
              //       ))
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

// List<Widget> getData(int count) {
//   List<Widget> data = [];
//   for (var i = 0; i < count; i++) {
//     var menu = ListTile(title:Text(
//       'เมนู ${i + 1}',
//       style: TextStyle(fontSize: 25)),
//       subtitle: Text('หัวข้อย่อยที่ ${i-1}'),
//     );
//     data.add(menu);

//   }
//   return data;
// }
