import 'package:flutter/material.dart';
import 'Login_Page.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Color.fromRGBO(231, 60, 30, 1),
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 70),
            child: Column(
              children:[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        alignment: Alignment.topLeft,
                        icon: const Icon(Icons.arrow_back, color: Colors.white,),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: height * 0.20,
                  child: LayoutBuilder(builder: (context, constraints){
                    double innerHeight = constraints.maxHeight;
                    double innerWidth = constraints.maxWidth;
                    return Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: innerHeight * 0.55,
                            width: innerWidth ,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 12,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: 
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Student ID : ',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontFamily: 'Nunito',
                                            fontSize: 23,
                                          ),
                                        ),
                                        const Text(
                                          '6431503116',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Nunito',
                                            fontSize: 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 17,
                                    ),
                                    Row(
                                      mainAxisAlignment: 
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Status : ',
                                          style: TextStyle(
                                            color: Colors.grey[700],
                                            fontFamily: 'Nunito',
                                            fontSize: 23,
                                          ),
                                        ),
                                        const Text(
                                          'STUDENT CURRENT',
                                          style: TextStyle(
                                            color: Color.fromRGBO(8, 250, 36, 1),
                                            fontFamily: 'Nunito',
                                            fontSize: 21,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: height * 0.06,
                  width: width ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red[100],
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.pushNamed(context, '/biography');
                      },icon: const Icon(LineAwesomeIcons.user),
                    ),
                    ),
                    title: const Text(
                      'Biography'
                    ),
                  ),
                ),
                  const SizedBox(
                      height: 20,
                    ),
                  Container(
                  height: height * 0.06,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  
                  child: ListTile(
                    leading: Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red[100],
                      ),
                      child: IconButton(onPressed: (){
                        Navigator.pushNamed(context, '/contact');
                      },icon: Icon(Icons.phone),
                    ),
                    ),
                    title: const Text(
                      'Contacts'
                    ),
                ),
              ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: height * 0.06,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  
                  child: ListTile(
                    leading: Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.red[100],
                      ),
                     child:  IconButton(onPressed: () {
                        Navigator.push(context,
                MaterialPageRoute(builder: (context)=> LoginPage(title: '',)),
                );
                      }, icon: const Icon(Icons.logout,),
                    ),
                  ),
                    title: const Text(
                      'Logout'
                    ),
                    textColor: Colors.red,
                  ),
                ),
                
              ],
            ),
          ),
        )
      ],
    );
  }
}
