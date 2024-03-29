import 'package:cycle_bike_mfu/Home_main.dart';
import 'package:cycle_bike_mfu/bookings_page.dart';
import 'package:flutter/material.dart';


class bike_info_page6 extends StatefulWidget {
  const bike_info_page6({super.key});

  @override
  State<bike_info_page6> createState() => _BikeInfoPage6State();
}

class _BikeInfoPage6State extends State<bike_info_page6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
             Positioned(   
              left: 16,
              top: 16,
              child: SizedBox(
                height: 48,
                width: 48,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
            const Positioned(
              right: 16,
              top: 16,
              child: CircleAvatar(radius: 30 ,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white, 
              child: Text('MFU'),),
            ),
            Positioned(
              left: 10,
              right: 10,
              top: 100,
              child: SizedBox(
                height: 240,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://freepngimg.com/thumb/bicycle/12-bicycle-png-image.png'
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 24,
              right: 24,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'MFU',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                'Classic Bike',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Text(
                          'Available',
                          style: TextStyle(
                              color: Color.fromARGB(255, 64, 221, 69),
                              fontSize: 18),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                        'This bicycle is authorized for MFU students only. If we found that the user is not our students. We will enforce our terms and restrictions. The student must be required to return the equipment on time. Please be careful with your possessions . If they are broken or lost. We have the right to terminate your rental status.',
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Range",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "25mil",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Speed",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "50kmh",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Power",
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "200wh",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    shape: BoxShape.circle),
                  child:  Padding(padding: 
                  const EdgeInsets.all(8.0),
                  child:  CircleAvatar(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child :GestureDetector(
                      onTap:(){
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const BookingPage())
                        );
                      },
                    child: const Text(
                      'Book',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}