import 'package:cycle_bike_mfu/bookings_page.dart';
import 'package:cycle_bike_mfu/history_page.dart';
import 'package:cycle_bike_mfu/qrcode_page.dart';
import 'package:flutter/material.dart';
import 'package:cycle_bike_mfu/bike_info_page.dart';

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
      
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children:  [
                  const Padding(
                    padding:  EdgeInsets.only(left:10.0,bottom: 10.0),
                    child: Text("Hi, Tony,",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,bottom: 10.0),
                    child: Row(
                      children: const[
                         Text("Select ",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.normal),
                                ),
                         Text('Bicycle',style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26.0,bottom: 10.0),
                    child: Row(
                      children: const[
                         Text("To Riding ",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                         Text('Now',style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric( vertical: 2.0),
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(border: Border.all(width: 1.0,color: Colors.redAccent)),
                child: ListTile(
                  leading: Image.asset("assets/images/Bike2.png",
                      height: 100.0, width: 100.0, fit: BoxFit.contain),
                  title: const Text(
                    "Classic Bicycle",
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text("No basket",textAlign: TextAlign.center,),
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
                padding: const EdgeInsets.symmetric( vertical: 2.0),
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(border: Border.all(width: 1.0,color: Colors.white)),
                child: ListTile(
                  leading: Image.asset("assets/images/Bike1.jpg",
                      height: 100.0, width: 100.0, fit: BoxFit.contain),
                  title: Text(
                    "Mountain Bicycle",
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text("No basket",textAlign: TextAlign.center,),
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
                padding: const EdgeInsets.symmetric( vertical: 2.0),
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                decoration: BoxDecoration(border: Border.all(width: 1.0,color: Colors.redAccent)),
                child: ListTile(
                  leading: Image.asset("assets/images/Bike_info.png",
                      height: 100.0, width: 100.0, fit: BoxFit.contain),
                  title: Text(
                    "Electric Bicycle",
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text("No basket",textAlign: TextAlign.center,),
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
                padding: const EdgeInsets.symmetric( vertical: 2.0),
                margin: const EdgeInsets.symmetric(vertical: 2.0),
                decoration:  BoxDecoration(border: Border.all(width: 1.0,color: Colors.white),),
                child: ListTile(
                  leading: Image.asset("assets/images/Bike3.png",
                      height: 100.0, width: 100.0, fit: BoxFit.contain),
                  title: Text(
                    "Classic Bicycle",
                    textAlign: TextAlign.center,
                  ),
                  subtitle: Text("Have basket",textAlign: TextAlign.center,),
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
      ]),
    );
  }
}
