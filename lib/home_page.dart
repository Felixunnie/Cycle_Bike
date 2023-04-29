import 'package:cycle_bike_mfu/bookings_page.dart';
import 'package:cycle_bike_mfu/history_page.dart';
import 'package:cycle_bike_mfu/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:cycle_bike_mfu/bike_info_page.dart';
import 'package:cycle_bike_mfu/bike_info_page1.dart';
import 'package:cycle_bike_mfu/bike_info_page2.dart';
import 'package:cycle_bike_mfu/bike_info_page3.dart';
import 'package:cycle_bike_mfu/bike_info_page4.dart';
import 'package:cycle_bike_mfu/bike_info_page5.dart';
import 'package:cycle_bike_mfu/bike_info_page6.dart';
import 'package:cycle_bike_mfu/bike_info_page7.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
      HomePage(),
      HistoryPage(),
      qrcode_page(),
      BookingPage(),
    ];


  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
    // Handle navigation to the corresponding screen based on the index of the tapped item
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: SingleChildScrollView(
      child: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Electric Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color: Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BikeInfoPage()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info1.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page1()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info2.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
              "City Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
               'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
               textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page2()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info3.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
              'Available', style: TextStyle(
                 color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page3()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info4.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page4()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info5.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Hybrid Bikes",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page5()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info6.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page6()),
                );
              },
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 0.5, color: Colors.white)),
            child: ListTile(
              leading: Image.asset('assets/images/Bike_info7.png',
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Mountain Bike",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                'Available', style: TextStyle(
                  color:  Color.fromARGB(255, 64, 221, 69)
                ),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                // Add your navigation code here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => bike_info_page7()),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
}
