import 'package:flutter/material.dart';
import 'package:ssip_signverse_project/Screen/AlphaBateScreens/CardPage.dart';
import 'package:ssip_signverse_project/Screen/Cards/cardsmodeldeaf.dart';
import 'package:ssip_signverse_project/Screen/Cards/model.dart';
import 'package:ssip_signverse_project/Screen/Cards/mydata.dart';

import 'Cards/categories.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});
  @override
  State<DictionaryScreen> createState() => _DictionaryScreenState();

}

class _DictionaryScreenState extends State<DictionaryScreen> {
  String personType1 = 'Deaf';
  String personType2 = 'Normal';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                child: Text("What Would You",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        color: Color(0xff4339E7),
                        fontWeight: FontWeight.bold)),
              ),
              const Center(
                child: Text("like to learn ?",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 25,
                        color: Color(0xff4339E7),
                        fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 10,
              ),
              // Center(
              //   child: Container(
              //     width: 300,
              //     decoration: const BoxDecoration(
              //       color: Color(0xff4339E7),
              //     ),
              //     height: 1,
              //     child: Text(''),
              //   ),
              // ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 50,
                  bottom: 20,
                ),
                child: Text(
                  "AlphaBatical",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 19,
                      color: Color(0xff777777)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 9,
                ),
                child: Column(
                  children: [
                    HorizontalScrollCard(),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 23,
                  top: 30,
                  bottom: 10,
                ),
                child: Text(
                  "Catagories",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 19,
                      color: Color(0xff777777)),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 9,
                      top: 20
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Color(0xff4339E7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => categoriesState(personType1)));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage('assets/SignverseLogo.png'),),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            const Hero(
                              tag: 'catagories',
                              child: Text(
                                "Deaf Catagories",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(

                      top: 20
                    ),
                    child: Container(
                      margin: EdgeInsets.all(10),
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Color(0xff4339E7),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => categoriesState(personType2)));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 170,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(image: AssetImage('assets/SignverseLogo.png'),),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            const Hero(
                              tag: 'catagories',
                              child: Text(
                                "Normal Catagories",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 150),
              // Expanded(child: categoriesState(personType1)),
            ],
          ),
        ),
    );
  }
}

class HorizontalScrollCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cardsData = [
      {
        'title': 'A',
        'img': 'assets/imgs/A.png',
        'Link': '/A',
        'data': [
          {
            'name': "About",
            'link': "https://www.youtube.com/embed/nbGetUh9P74",
          },
          {
            'name': "Accident",
            'link': "https://www.youtube.com/embed/uTZVPZYcdw8",
          },
          {
            'name': "Across",
            'link': "https://www.youtube.com/embed/IOz0Yx8IpHU",
          },
          {
            'name': "Add",
            'link': "https://www.youtube.com/embed/B0eoeNCs3RI",
          },
          {
            'name': "After",
            'link': "https://www.youtube.com/embed/tTjQsNGEeZ0",
          },
          {
            'name': "Again",
            'link': "https://www.youtube.com/embed/y57kJAluXeM",
          },
          {
            'name': "Age",
            'link': "https://www.youtube.com/embed/98wq5RZYq90",
          },
          {
            'name': "Air",
            'link': "https://www.youtube.com/embed/hpWytkH3Oas",
          },
          {
            'name': "Airport",
            'link': "https://www.youtube.com/embed/t3QUjMIwyxE",
          },
          {
            'name': "All",
            'link': "https://www.youtube.com/embed/by5LPvJU5OY",
          },
        ]
      },
      {
        'title': 'B',
        'img': 'assets/imgs/B.png',
        'Link': '/B',
        'data': [
          {
            'name': "Baby",
            'link': "https://www.youtube.com/embed/DPQ-TcGykDw",
          },
          {
            'name': "Back",
            'link': "https://www.youtube.com/embed/Mbu8042cTuA",
          },
          {
            'name': "Bad",
            'link': "https://www.youtube.com/embed/YQcpKDKzhIQ",
          },
          {
            'name': "Ball",
            'link': "https://www.youtube.com/embed/Qc72veU0a6g",
          },
          {
            'name': "Banana",
            'link': "https://www.youtube.com/embed/DbWWsUmMXUA",
          },
          {
            'name': "Bank",
            'link': "https://www.youtube.com/embed/IphLasWnRHk",
          },
          {
            'name': "Barber",
            'link': "https://www.youtube.com/embed/VhsF-apA_D8",
          },
          {
            'name': "Bathroom",
            'link': "https://www.youtube.com/embed/j3tuj3W7MFk",
          },
          {
            'name': "Beautiful",
            'link': "https://www.youtube.com/embed/rQ4mnndh8wk",
          },
          {
            'name': "Bed",
            'link': "https://www.youtube.com/embed/PWuJv2FHsvA",
          },
        ]
      },
      {
        'title': 'C',
        'img': 'assets/imgs/C.png',
        'Link': '/C',
        'data': [
          {
            'name': "Cake",
            'link': "https://www.youtube.com/embed/nU2c599HQUM",
          },
          {
            'name': "Call",
            'link': "https://www.youtube.com/embed/g9AslMiIVTE",
          },
          {
            'name': "Camera",
            'link': "https://www.youtube.com/embed/I1i5r5rd7vI",
          },
          {
            'name': "Can",
            'link': "https://www.youtube.com/embed/-R02rqkyxHc",
          },
          {
            'name': "Candle",
            'link': "https://www.youtube.com/embed/migHEZ8zuh0",
          },
          {
            'name': "Car",
            'link': "https://www.youtube.com/embed/Rty4lN6R8LY",
          },
          {
            'name': "Careful",
            'link': "https://www.youtube.com/embed/DlLsAg0WL68",
          },
          {
            'name': "Carry",
            'link': "https://www.youtube.com/embed/rzVyqTff8MY",
          },
          {
            'name': "Change",
            'link': "https://www.youtube.com/embed/2qRR4hQZAdA",
          },
          {
            'name': "Circle",
            'link': "https://www.youtube.com/embed/rBRJw6gUMHM",
          },
        ]
      },
      {
        'title': 'D',
        'img': 'assets/imgs/D.png',
        'Link': '/D',
        'data': [
          {
            'name': "Daughter",
            'link': "https://www.youtube.com/embed/OjYou9zLuDM",
          },
          {
            'name': "Dance",
            'link': "https://www.youtube.com/embed/mdlm_BRmE2o",
          },
          {
            'name': "Day",
            'link': "https://www.youtube.com/embed/11derBixy2I",
          },
          {
            'name': "Deer",
            'link': "https://www.youtube.com/embed/B1plqHKGoW4",
          },
          {
            'name': "Demand",
            'link': "https://www.youtube.com/embed/NfOadhavWHs",
          },
          {
            'name': "Desert",
            'link': "https://www.youtube.com/embed/jaGiqrGr1y0",
          },
          {
            'name': "Destroy",
            'link': "https://www.youtube.com/embed/DcRRjyNfFJs",
          },
          {
            'name': "Different",
            'link': "https://www.youtube.com/embed/8DFBVQZAs_U",
          },
          {
            'name': "Difficult",
            'link': "https://www.youtube.com/embed/JW9yPJ2REK0",
          },
          {
            'name': "Dinner",
            'link': "https://www.youtube.com/embed/ywSGE7YCdCM",
          },
        ]
      },
      {
        'title': 'E',
        'img': 'assets/imgs/E.png',
        'Link': '/E',
        'data': [
          {
            'name': "Eagle",
            'link': "https://www.youtube.com/embed/OaQqutxOEAE",
          },
          {
            'name': "Earth",
            'link': "https://www.youtube.com/embed/LYfzb9LaUHw",
          },
          {
            'name': "Easy",
            'link': "https://www.youtube.com/embed/Q4WiRFOlOu0",
          },
          {
            'name': "Eat",
            'link': "https://www.youtube.com/embed/d4nkMcBvUZM",
          },
          {
            'name': "Egg",
            'link': "https://www.youtube.com/embed/DtdeOvkYLo4",
          },
          {
            'name': "Elbow",
            'link': "https://www.youtube.com/embed/1pTz3GSNi6w",
          },
          {
            'name': "Energy",
            'link': "https://www.youtube.com/embed/EcRRjyNfFJs",
          },
          {
            'name': "Enjoy",
            'link': "https://www.youtube.com/embed/i9_iDJ7f6oU",
          },
          {
            'name': "Environment",
            'link': "https://www.youtube.com/embed/u1e9ioscyfU",
          },
          {
            'name': "Exercise",
            'link': "https://www.youtube.com/embed/lGjAsZhyyKc",
          },
        ]
      },
      {
        'title': 'F',
        'img': 'assets/imgs/F.png',
        'Link': '/F',
        'data': [
          {
            'name': "Face",
            'link': "https://www.youtube.com/embed/31IAr_rm054",
          },
          {
            'name': "Fall",
            'link': "https://www.youtube.com/embed/5ZQ26qxo_qY",
          },
          {
            'name': "Family",
            'link': "https://www.youtube.com/embed/7swvJrXBA3I",
          },
          {
            'name': "Fan",
            'link': "https://www.youtube.com/embed/PB7rn__dcKg",
          },
          {
            'name': "Fast",
            'link': "https://www.youtube.com/embed/SGsTDG4Awfk",
          },
          {
            'name': "Father",
            'link': "https://www.youtube.com/embed/Gm2HCSz7Jqg",
          },
          {
            'name': "Flag",
            'link': "https://www.youtube.com/embed/BzQFZNqQVsc",
          },
          {
            'name': "Friend",
            'link': "https://www.youtube.com/embed/ElXP4DjT3H8",
          },
          {
            'name': "Forget",
            'link': "https://www.youtube.com/embed/JGiAZZ8byeU",
          },
          {
            'name': "Full",
            'link': "https://www.youtube.com/embed/BrDv3nkZnCE",
          },
        ]
      },
      {
        'title': 'G',
        'img': 'assets/imgs/G.png',
        'Link': '/G',
        'data': [
          {
            'name': "Gas",
            'link': "https://www.youtube.com/embed/7ehztIhH_uA",
          },
          {
            'name': "Gate",
            'link': "https://www.youtube.com/embed/uA9K19APeNo",
          },
          {
            'name': "Girl",
            'link': "https://www.youtube.com/embed/gz02l8wMzKk",
          },
          {
            'name': "Give",
            'link': "https://www.youtube.com/embed/Codai31kUpE",
          },
          {
            'name': "Glass",
            'link': "https://www.youtube.com/embed/oQ5MXCEEm7M",
          },
          {
            'name': "Gloves",
            'link': "https://www.youtube.com/embed/o1T_M9vuDr8",
          },
          {
            'name': "Go",
            'link': "https://www.youtube.com/embed/PQoocuBF2f8",
          },
          {
            'name': "God",
            'link': "https://www.youtube.com/embed/SqjG2lMm-NU",
          },
          {
            'name': "Gold",
            'link': "https://www.youtube.com/embed/iyN0Qrmy8F8",
          },
          {
            'name': "Good",
            'link': "https://www.youtube.com/embed/mmXQw0IktO0",
          },
        ]
      },
      {
        'title': 'H',
        'img': 'assets/imgs/H.png',
        'Link': '/H',
        'data': [
          {
            'name': "Hair",
            'link': "https://www.youtube.com/embed/V279MbdgsSY",
          },
          {
            'name': "Hand",
            'link': "https://www.youtube.com/embed/GhYMzZZMMJw",
          },
          {
            'name': "Happy",
            'link': "https://www.youtube.com/embed/Jarh1WMa868",
          },
          {
            'name': "Hard",
            'link': "https://www.youtube.com/embed/AjSoS7r4qJI",
          },
          {
            'name': "Head",
            // video?
            'link': "",
          },
          {
            'name': "Hear",
            'link': "https://www.youtube.com/embed/CXOPG4pJxDI",
          },
          {
            'name': "Heart",
            'link': "https://www.youtube.com/embed/fT5IRf73MYo",
          },
          {
            'name': "Heavy",
            'link': "https://www.youtube.com/embed/2XXjH0ZsdTg",
          },
          {
            'name': "Holiday",
            'link': "https://www.youtube.com/embed/uZuvBINbAqo",
          },
          {
            'name': "Help",
            'link': "https://www.youtube.com/embed/d9fEfBJmy0Y",
          },
        ]
      },
      {
        'title': 'I',
        'img': 'assets/imgs/I.png',
        'Link': '/I',
        'data': [
          {
            'name': "Ice Cream",
            'link': "https://www.youtube.com/embed/PiSY8MIVoMs",
          },
          {
            'name': "Important",
            'link': "https://www.youtube.com/embed/tMKMjQtqO2U",
          },
          {
            'name': "In",
            'link': "https://www.youtube.com/embed/lQOdXN62MXo",
          },
          {
            'name': "Insect",
            'link': "https://www.youtube.com/embed/8gdHlsqexzI",
          },
        ]
      },
      {
        'title': 'J',
        'img': 'assets/imgs/J.png',
        'Link': '/J',
        'data': [
          {
            'name': "Job",
            'link': "https://www.youtube.com/embed/MMHxvuN8Z_0",
          },
          {
            'name': "Juice",
            'link': "https://www.youtube.com/embed/IMzhNeb2ziQ",
          },
          {
            'name': "Jump",
            'link': "https://www.youtube.com/embed/djeFrqW7rPE",
          },
          {
            'name': "Jesus",
            'link': "https://www.youtube.com/embed/AX7RoHSCLPk",
          },
          {
            'name': "Jam",
            'link': "https://www.youtube.com/embed/QdOmsCK3gHg",
          },
        ]
      },
      {
        'title': 'K',
        'img': 'assets/imgs/K.png',
        'Link': '/K',
        'data': [
          {
            'name': "Kangaroo",
            'link': "https://www.youtube.com/embed/ZolqmXUbwIw",
          },
          {
            'name': "Key",
            'link': "https://www.youtube.com/embed/JabTaO_zQ-M",
          },
          {
            'name': "Kick",
            'link': "https://www.youtube.com/embed/l97vwBQOu94",
          },
          {
            'name': "King",
            'link': "https://www.youtube.com/embed/idmU_oI_TPs",
          },
          {
            'name': "Kite",
            'link': "https://www.youtube.com/embed/UdD80Owt1n8",
          },
          {
            'name': "Kitchen",
            'link': "https://www.youtube.com/embed/U2DPGFl5JFA",
          },
          {
            'name': "Kiss",
            'link': "https://www.youtube.com/embed/z9Bb0RtVstk",
          },
          {
            'name': "Knife",
            'link': "https://www.youtube.com/embed/Hdvjnsplcx8",
          },
          {
            'name': "Karate",
            'link': "https://www.youtube.com/embed/skoujbhFxtg",
          },
        ]
      },
      {
        'title': 'L',
        'img': 'assets/imgs/L.png',
        'Link': '/L',
        'data': [
          {
            'name': "Ladder",
            'link': "https://www.youtube.com/embed/ss35NieQOpU",
          },
          {
            'name': "Lake",
            'link': "https://www.youtube.com/embed/s0HIntkDTew",
          },
          {
            'name': "Laugh",
            'link': "https://www.youtube.com/embed/N0HOc0gJyRs",
          },
          {
            'name': "Lazy",
            'link': "https://www.youtube.com/embed/fh41xuYjbco",
          },
          {
            'name': "Leaf",
            'link': "https://www.youtube.com/embed/rGwK-HsdDk0",
          },
          {
            'name': "Leave",
            'link': "https://www.youtube.com/embed/uulY6vsvNQA",
          },
          {
            'name': "Left",
            'link': "https://www.youtube.com/embed/v9-8p5C-CRU",
          },
          {
            'name': "Leg",
            'link': "https://www.youtube.com/embed/ZGH9wRwlXSA",
          },
          {
            'name': "Letter",
            'link': "https://www.youtube.com/embed/6ao-N2yvDYc",
          },
          {
            'name': "Little",
            'link': "https://www.youtube.com/embed/Qy07r-5SdkA",
          },
        ]
      },
      {
        'title': 'M',
        'img': 'assets/imgs/M.png',
        'Link': '/M',
        'data': [
          {
            'name': "Machine",
            'link': "https://www.youtube.com/embed/bC7wNuiLgHI",
          },
          {
            'name': "Magic",
            'link': "https://www.youtube.com/embed/tuw6tMLjHwQ",
          },
          {
            'name': "Magnet",
            'link': "https://www.youtube.com/embed/CuOhMZjaUS8",
          },
          {
            'name': "Man",
            'link': "https://www.youtube.com/embed/rYTt2LuzVhw",
          },
          {
            'name': "Many",
            'link': "https://www.youtube.com/embed/db5vQY_fLfw",
          },
          {
            'name': "Map",
            'link': "https://www.youtube.com/embed/LkAdSi8XMnA",
          },
          {
            'name': "Meat",
            'link': "https://www.youtube.com/embed/dOZOALFxyNw",
          },
          {
            'name': "Money",
            'link': "https://www.youtube.com/embed/NZwNyVXvpTo",
          },
          {
            'name': "Month",
            'link': "https://www.youtube.com/embed/xA8hTvpWbh0",
          },
          {
            'name': "Moon",
            'link': "https://www.youtube.com/embed/qvpipwu40zk",
          },
        ]
      },
      {
        'title': 'N',
        'img': 'assets/imgs/N.png',
        'Link': '/N',
        'data': [
          {
            'name': "Natural",
            'link': "https://www.youtube.com/embed/OcBBb1cbZqc",
          },
          {
            'name': "Near",
            'link': "https://www.youtube.com/embed/Z_LPvE-ICAw",
          },
          {
            'name': "Never",
            'link': "https://www.youtube.com/embed/sverVWEAPD8",
          },
          {
            'name': "New",
            'link': "https://www.youtube.com/embed/fCC3_lRJ2es",
          },
          {
            'name': "Next",
            'link': "https://www.youtube.com/embed/igW552_dD_o",
          },
          {
            'name': "Noon",
            'link': "https://www.youtube.com/embed/hDVU5-mq6H8",
          },
          {
            'name': "Note",
            'link': "https://www.youtube.com/embed/Zn0fVlU7o9Y",
          },
          {
            'name': "Notice",
            'link': "https://www.youtube.com/embed/b8BlqEQCtiY",
          },
          {
            'name': "Now",
            'link': "https://www.youtube.com/embed/b7EQniqN7rs",
          },
          {
            'name': "Numbers",
            'link': "https://www.youtube.com/embed/ZXqhw1b6_DY",
          },
        ]
      },
      {
        'title': 'O',
        'img': 'assets/imgs/O.png',
        'Link': '/O',
        'data': [
          {
            'name': "On",
            'link': "https://www.youtube.com/embed/IdF3Z-HI8QY",
          },
          {
            'name': "Of",
            'link': "https://www.youtube.com/embed/Y1KyjzkkP4E",
          },
          {
            'name': "Our",
            'link': "https://www.youtube.com/embed/8mXwd_VuW1k",
          },
          {
            'name': "Over",
            'link': "https://www.youtube.com/embed/GLLwgmHVTGM",
          },
          {
            'name': "Order",
            'link': "https://www.youtube.com/embed/JIm7aysFevs",
          },
          {
            'name': "Open",
            'link': "https://www.youtube.com/embed/3fG2P5D8Jm0",
          },
          {
            'name': "Out",
            'link': "https://www.youtube.com/embed/OBPTV3YthOw",
          },
          {
            'name': "Office",
            'link': "https://www.youtube.com/embed/5ov1E2nBePg",
          },
          {
            'name': "Object",
            'link': "https://www.youtube.com/embed/OfGkvEa9C-A",
          },
          {
            'name': "Only",
            'link': "https://www.youtube.com/embed/cFdYCBpZGEw",
          },
        ]
      },
      {
        'title': 'P',
        'img': 'assets/imgs/P.png',
        'Link': '/P',
        'data': [
          {
            'name': "Pain",
            'link': "https://www.youtube.com/embed/fggt2fOzJsk",
          },
          {
            'name': "Parent",
            'link': "https://www.youtube.com/embed/JBO4vOeqQxs",
          },
          {
            'name': "Pass",
            'link': "https://www.youtube.com/embed/Fu6JYe2kAkg",
          },
          {
            'name': "Person",
            'link': "https://www.youtube.com/embed/hAiUOOeVyRg",
          },
          {
            'name': "Plan",
            'link': "https://www.youtube.com/embed/zUtEmpaF7kM",
          },
          {
            'name': "Plate",
            'link': "https://www.youtube.com/embed/E7okhzFRINQ",
          },
          {
            'name': "Police",
            'link': "https://www.youtube.com/embed/38_FvLAz4Lo",
          },
          {
            'name': "Proud",
            'link': "https://www.youtube.com/embed/8z32TzNwU7U",
          },
          {
            'name': "Proof",
            'link': "https://www.youtube.com/embed/bgNFqlUDCMw",
          },
          {
            'name': "Pull",
            'link': "https://www.youtube.com/embed/d3tDqVfbgCg",
          },
        ]
      },
      {
        'title': 'Q',
        'img': 'assets/imgs/Q.png',
        'Link': '/Q',
        'data': [
          {
            'name': "Qualification",
            'link': "https://www.youtube.com/embed/sNWCdBEIWa8",
          },
          {
            'name': "Quality",
            'link': "https://www.youtube.com/embed/NmTBx9PgX-I",
          },
          {
            'name': "Quantity",
            'link': "https://www.youtube.com/embed/_mRzTYgtxCU",
          },
          {
            'name': "Quick",
            'link': "https://www.youtube.com/embed/cpbTXmt7XwA",
          },
          {
            'name': "Quit",
            'link': "https://www.youtube.com/embed/jml-E067HJc",
          },
          {
            'name': "Questions",
            'link': "https://www.youtube.com/embed/EhErcUPHNgg",
          },
          {
            'name': "Quote",
            'link': "https://www.youtube.com/embed/LOHFGeu_YVo",
          },
          {
            'name': "Qualified",
            'link': "https://www.youtube.com/embed/gBXLHNjB5Co",
          },
          {
            'name': "Query",
            'link': "https://www.youtube.com/embed/LfpizDfWhns",
          },
          {
            'name': "Quotation",
            'link': "https://www.youtube.com/embed/LeIkWWTH__A",
          },
        ]
      },
      {
        'title': 'R',
        'img': 'assets/imgs/R.png',
        'Link': '/R',
        'data': [
          {
            'name': "Rabbit",
            'link': "https://www.youtube.com/embed/uf4A34QWFGw",
          },
          {
            'name': "Rain",
            'link': "https://www.youtube.com/embed/Xg89XzbXfxc",
          },
          {
            'name': "Read",
            'link': "https://www.youtube.com/embed/Dz2avlvSTYQ",
          },
          {
            'name': "Real",
            'link': "https://www.youtube.com/embed/7_VrNljOvzI",
          },
          {
            'name': "Receive",
            'link': "https://www.youtube.com/embed/m0O2mJ6krG8",
          },
          {
            'name': "Record",
            'link': "https://www.youtube.com/embed/z89wqxyMu6s",
          },
          {
            'name': "Room",
            'link': "https://www.youtube.com/embed/hHLoe4rXNNk",
          },
          {
            'name': "Roof",
            'link': "https://www.youtube.com/embed/vMYEdgC0yWs",
          },
          {
            'name': "Run",
            'link': "https://www.youtube.com/embed/wDXqSeOQQy4",
          },
          {
            'name': "Rest",
            'link': "https://www.youtube.com/embed/6vWqgLivxJg",
          },
        ]
      },
      {
        'title': 'S',
        'img': 'assets/imgs/S.png',
        'Link': '/S',
        'data': [
          {
            'name': "Sad",
            'link': "https://www.youtube.com/embed/P3LobzeDo9E",
          },
          {
            'name': "Star",
            'link': "https://www.youtube.com/embed/gSTE4Bmxf4M",
          },
          {
            'name': "School",
            'link': "https://www.youtube.com/embed/T3DNMjNynU0",
          },
          {
            'name': "Sister",
            'link': "https://www.youtube.com/embed/q4UZa51yFUA",
          },
          {
            'name': "Skip",
            'link': "https://www.youtube.com/embed/xj41dOgAdK8",
          },
          {
            'name': "Sea",
            'link': "https://www.youtube.com/embed/7LXVtTEP_IU",
          },
          {
            'name': "Strong",
            'link': "https://www.youtube.com/embed/nS5mLcPFpnk",
          },
          {
            'name': "Son",
            'link': "https://www.youtube.com/embed/tS7NrrYnx_E",
          },
          {
            'name': "Sorry",
            'link': "https://www.youtube.com/embed/v7LOMsrEiVI",
          },
          {
            'name': "Sun",
            'link': "https://www.youtube.com/embed/e2OKcVZ-_eA",
          },
        ]
      },
      {
        'title': 'T',
        'img': 'assets/imgs/T.png',
        'Link': '/T',
        'data': [
          {
            'name': "Table",
            'link': "https://www.youtube.com/embed/nvofZFSfV1w",
          },
          {
            'name': "Talk",
            'link': "https://www.youtube.com/embed/qXPZr651bTY",
          },
          {
            'name': "Tall",
            'link': "https://www.youtube.com/embed/YF72FhOc8B8",
          },
          {
            'name': "These",
            'link': "https://www.youtube.com/embed/QXRCiVRaHsI",
          },
          {
            'name': "They",
            'link': "https://www.youtube.com/embed/DCwA5BuGHa8",
          },
          {
            'name': "Touch",
            'link': "https://www.youtube.com/embed/KjuOnxtgNrs",
          },
          {
            'name': "Tour",
            'link': "https://www.youtube.com/embed/aW8jBRmN24M",
          },
          {
            'name': "Transport",
            'link': "https://www.youtube.com/embed/DcJKQkC-JjY",
          },
          {
            'name': "Travel",
            'link': "https://www.youtube.com/embed/aI58FdiAz7Y",
          },
          {
            'name': "Try",
            'link': "https://www.youtube.com/embed/dT4Y_R7jVIE",
          },
        ]
      },
      {
        'title': 'U',
        'img': 'assets/imgs/U.png',
        'Link': '/U',
        'data': [
          {
            'name': "Ugly",
            'link': "https://www.youtube.com/embed/-JYukZxN6wQ",
          },
          {
            'name': "Under",
            'link': "https://www.youtube.com/embed/smKYyxd26GY",
          },
          {
            'name': "Uniform",
            'link': "https://www.youtube.com/embed/CowXY9IdbxA",
          },
          {
            'name': "Union",
            'link': "https://www.youtube.com/embed/dTjzMwNtA1o",
          },
          {
            'name': "Up",
            'link': "https://www.youtube.com/embed/aRMlrpN0MzU",
          },
          {
            'name': "Universe",
            'link': "https://www.youtube.com/embed/3zbf5Y2id1U",
          },
          {
            'name': "Urgent",
            'link': "https://www.youtube.com/embed/FrcAMp9yi1k",
          },
          {
            'name': "Unit",
            'link': "https://www.youtube.com/embed/SJJSpU8MFDs",
          },
          {
            'name': "Unlucky",
            'link': "https://www.youtube.com/embed/9qlCI50wdzY",
          },
          {
            'name': "Umbrella",
            'link': "https://www.youtube.com/embed/jY2sv02MLIs",
          },
        ]
      },
      {
        'title': 'V',
        'img': 'assets/imgs/V.png',
        'Link': '/V',
        'data': [
          {
            'name': "Vacation",
            'link': "https://www.youtube.com/embed/Xl-YVIaxrFE",
          },
          {
            'name': "Vegetables",
            'link': "https://www.youtube.com/embed/kq53gLJcp-s",
          },
          {
            'name': "Vehicles",
            'link': "https://www.youtube.com/embed/CtWGmhj6scQ",
          },
          {
            'name': "Visit",
            'link': "https://www.youtube.com/embed/YSKXGgR-m4Y",
          },
          {
            'name': "Visitor",
            'link': "https://www.youtube.com/embed/qFOJk1w7PIs",
          },
          {
            'name': "Village",
            'link': "https://www.youtube.com/embed/8yWcdPX31pM",
          },
          {
            'name': "Variety",
            'link': "https://www.youtube.com/embed/tI8qa4gE3uQ",
          },
          {
            'name': "Vacancy",
            'link': "https://www.youtube.com/embed/aNthcGq-FqI",
          },
          {
            'name': "Volume",
            'link': "https://www.youtube.com/embed/TNNoq5pS-WQ",
          },
          {
            'name': "Voluntarily",
            'link': "https://www.youtube.com/embed/C7tQarNFXJo",
          },
        ]
      },
      {
        'title': 'W',
        'img': 'assets/imgs/W.png',
        'Link': '/W',
        'data': [
          {
            'name': "Wait",
            'link': "https://www.youtube.com/embed/Ukr__1TiaOo",
          },
          {
            'name': "Warning",
            'link': "https://www.youtube.com/embed/9oigD1xSV-g",
          },
          {
            'name': "Wash",
            'link': "https://www.youtube.com/embed/6SgubmEkZQM",
          },
          {
            'name': "Watch",
            'link': "https://www.youtube.com/embed/CBgYsD9T-uI",
          },
          {
            'name': "Water",
            'link': "https://www.youtube.com/embed/5FSC6Og1RBQ",
          },
          {
            'name': "What",
            'link': "https://www.youtube.com/embed/wEd93OlB_ZI",
          },
          {
            'name': "When",
            'link': "https://www.youtube.com/embed/BJ3lCjVfx7Y",
          },
          {
            'name': "Where",
            'link': "https://www.youtube.com/embed/WGwhxNQtfbE",
          },
          {
            'name': "Work",
            'link': "https://www.youtube.com/embed/ezlHYwdmu_c",
          },
          {
            'name': "Word",
            'link': "https://www.youtube.com/embed/t454iG2RVJg",
          },
        ]
      },
      {
        'title': 'X',
        'img': 'assets/imgs/X.png',
        'Link': '/X',
        'data': [
          {
            'name': "X - Ray",
            'link': "https://www.youtube.com/embed/TLf8Uvxntpg",
          },
          {
            'name': "X-Ray",
            'link': "https://www.youtube.com/embed/MIal50cVwM0",
          },
        ]
      },
      {
        'title': 'Y',
        'img': 'assets/imgs/Y.png',
        'Link': '/Y',
        'data': [
          {
            'name': "Year",
            'link': "https://www.youtube.com/embed/a9th81iiE2M",
          },
          {
            'name': "You",
            'link': "https://www.youtube.com/embed/nS1xo_n5_sQ",
          },
          {
            'name': "Young",
            'link': "https://www.youtube.com/embed/OBHeVltjXT0",
          },
          {
            'name': "Your",
            'link': "https://www.youtube.com/embed/7fdPaEyfc9Y",
          },
          {
            'name': "Yourself",
            'link': "https://www.youtube.com/embed/P7aSfqQTkTk",
          },
          {
            'name': "Yesterday",
            'link': "https://www.youtube.com/embed/8ZD3FvK3NYY",
          },
          {
            'name': "Yellow",
            'link': "https://www.youtube.com/embed/6sQeR9LXn-U",
          },
          {
            'name': "Yearly",
            'link': "https://www.youtube.com/embed/EF3PXbHGGUM",
          },
        ]
      },
      {
        'title': 'Z',
        'img': 'assets/imgs/Z.png',
        'Link': '/Z',
        'data': [
          {
            'name': "Zebra",
            'link': 'https://www.youtube.com/embed/PQ5BHjzvK5A',
          },
          {
            'name': "Zebra Crossing",
            'link': "https://www.youtube.com/embed/M_F0YMifj5g",
          },
          {
            'name': "Zero Error",
            'link': "https://www.youtube.com/embed/QOXSBvW5Pds",
          },
          {
            'name': "Zonal",
            'link': "https://www.youtube.com/embed/0IF3Nx6idPQ",
          },
          {
            'name': "Zone",
            'link': "https://www.youtube.com/embed/TRIMTrqzSOc",
          },
          {
            'name': "Zoo",
            'link': "https://www.youtube.com/embed/iuYObHCPlVA",
          },
        ]
      }
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: cardsData.map((card) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CardPage(
                          title: card['title'],
                          image: card['img'],
                          description: card['data'])),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: 170,
                height: 220,
                decoration: BoxDecoration(
                  color: Color(0xff4339E7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 170,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Hero(
                          tag: "${card['title']}",
                          child: Image.asset(card['img'])),
                    ),
                    SizedBox(height: 10),
                    Text(
                      card['title'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
