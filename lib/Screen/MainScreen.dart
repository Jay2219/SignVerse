import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ssip_signverse_project/Screen/BottomNavigationBar/BottomNavigationBar.dart';
import 'package:ssip_signverse_project/Screen/CameraScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 80,),
              Column(
                children: [
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/SignverseLogo.png')),
                          // border: Border.all(width: 5 , color: Colors.black),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),
                  // Container(
                  //   width: 200,
                  //   height: 1,
                  //   decoration: BoxDecoration(
                  //     color: Color(0xff4339E7)
                  //   ),
                  // ),
                  SizedBox(width: 10,),
                  Text("SignVerse" , style: TextStyle(color: Color(0xff4339E7) , fontSize: 30 , fontWeight: FontWeight.w900 , fontFamily: "Comfortaa"),)
                ],
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation_Bar(initialIndex: 1)),);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff23272B),
                    // border: Border.all(width: 3 , color: Colors.black ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 15
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 28,),
                        Container( width: 60, height: 60,  decoration: BoxDecoration(
                          color: Color(0xff4238E6),
                          borderRadius: BorderRadius.circular(30)
                        ),child: IconButton(icon: FaIcon(FontAwesomeIcons.qrcode), onPressed: () { },color: Colors.white , iconSize: 35,)),
                        SizedBox(height: 15,),
                        Text("Scan Sign" , style: TextStyle(color: Colors.white , fontFamily: "Poppins" , fontWeight: FontWeight.w600 , fontSize: 25),),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation_Bar(initialIndex: 2)),);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff4238E6),
                    // border: Border.all(width: 3 , color: Colors.black ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 15
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 28,),
                        Container( width: 60, height: 60,  decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),child: IconButton(icon: FaIcon(FontAwesomeIcons.book), onPressed: () { },color: Color(0xff4238E6) , iconSize: 35,)),
                        SizedBox(height: 15,),
                        Text("Sign Dictionary" , style: TextStyle(color: Colors.white , fontFamily: "Poppins" , fontWeight: FontWeight.w600 , fontSize: 25),),
                      ],

                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation_Bar(initialIndex: 3)),);
                },
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20 , horizontal: 20),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 3 , color: Colors.black ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow:  [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      top: 15
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 28,),
                        Container( width: 60, height: 60,  decoration: BoxDecoration(
                          color: Color(0xff23272B),
                          borderRadius: BorderRadius.circular(30)
                        ),child: IconButton(icon: FaIcon(FontAwesomeIcons.message), onPressed: () { },color: Colors.white , iconSize: 35,)),
                        SizedBox(height: 15,),
                        Text("Conversation" , style: TextStyle(color: Color(0xff23272B) , fontFamily: "Poppins" , fontWeight: FontWeight.w600 , fontSize: 25),),
                      ],

                    ),
                  ),
                ),
              ),
              SizedBox(height: 150,)
            ],
          ),
        ),
      ),
    );
  }
}