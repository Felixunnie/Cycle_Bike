import 'package:cycle_bike_mfu/bookings_page.dart';
import 'package:cycle_bike_mfu/history_page.dart';
import 'package:cycle_bike_mfu/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:cycle_bike_mfu/bike_info_page.dart';
import 'package:cycle_bike_mfu/bike_info_page1.dart';

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
              leading: Image.asset("assets/images/Bike1.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike1.jpg",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike2.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
              leading: Image.asset("assets/images/Bike3.png",
                  height: 100.0, width: 100.0, fit: BoxFit.contain),
              title: const Text(
                "Classic Bicycle",
                textAlign: TextAlign.center,
              ),
              subtitle: const Text(
                "No basket",
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
        ],
      ),
    ),
  );
}
}
