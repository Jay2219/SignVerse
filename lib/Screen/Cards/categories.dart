// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ssip_signverse_project/Screen/Cards/cardsmodeldeaf.dart';
import 'package:ssip_signverse_project/Screen/Cards/cardsmodelnormal.dart';
import 'package:ssip_signverse_project/Screen/Cards/mydata.dart';

class categoriesState extends StatelessWidget {
  String perType;
  categoriesState(this.perType);
  var data = mydate();
  List categList = [
    'Family',
    'Expressions',
    'Places',
    'Time',
    'Requests',
    'Food',
    'Feelings',
    'Clothes',
    'Colors',
    'Numbers',
  ];
  List catIcon = [
    Icons.family_restroom,
    Icons.emoji_people_outlined,
    Icons.place_rounded,
    Icons.timelapse_sharp,
    Icons.volunteer_activism_outlined,
    Icons.food_bank_rounded,
    Icons.emoji_emotions,
    Icons.checkroom_outlined,
    Icons.color_lens_outlined,
    Icons.format_list_numbered_rtl_rounded,
  ];
  List imagesData = [
    'assets/family.png',
    'assets/expre.jpg',
    'assets/places.png',
    'assets/time.jpg',
    'assets/request.png',
    'assets/food.png',
    'assets/feeling.jpg',
    'assets/clothes.png',
    'assets/colors.jpg',
    'assets/numbers.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF3F5F9),
        elevation: 0,
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            width: 20,
            height: 25,
            margin: const EdgeInsets.only(
                left: 20,
                top: 20
            ),
            decoration: BoxDecoration(
              // border: Border.all(width: 2 , color: Colors.black),
              color: Color(0xff4339E7),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: FaIcon(
                FontAwesomeIcons.leftLong,
                color:  Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(height: 23),
            Text(
              " ${perType} Categories",
              style: const TextStyle(fontFamily: "Poppins" , color:  Color(0xff4339E7)),
            ),
          ],
        ),
      ),
        backgroundColor: Color(0xffF3F5F9),
        body: Padding(
          padding: EdgeInsets.only(left: 8 , right: 8 , bottom: 8 , top: 60),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: categList.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                    onTap: () {
                      if (perType == 'Deaf') {
                        if (categList[index] == 'Family') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.familyDate)));
                        } else if (categList[index] == 'Expressions') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.expressionData)));
                        } else if (categList[index] == 'Places') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.placesDate)));
                        } else if (categList[index] == 'Time') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(data.timeDate)));
                        } else if (categList[index] == 'Requests') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().requestsDate)));
                        } else if (categList[index] == 'Food') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().foodData)));
                        } else if (categList[index] == 'Feelings') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().feelingDate)));
                        } else if (categList[index] == 'Clothes') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().clothesDate)));
                        } else if (categList[index] == 'Colors') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().colorsDate)));
                        } else if (categList[index] == 'Numbers') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModel(mydate().numbersData)));
                        }
                      } else if (perType == 'Normal') {
                        if (categList[index] == 'Family') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.familyDate)));
                        } else if (categList[index] == 'Expressions') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.expressionData)));
                        } else if (categList[index] == 'Places') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.placesDate)));
                        } else if (categList[index] == 'Time') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(data.timeDate)));
                        } else if (categList[index] == 'Requests') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().requestsDate)));
                        } else if (categList[index] == 'Food') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().foodData)));
                        } else if (categList[index] == 'Feelings') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().feelingDate)));
                        } else if (categList[index] == 'Clothes') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().clothesDate)));
                        } else if (categList[index] == 'Colors') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().colorsDate)));
                        } else if (categList[index] == 'Numbers') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CardsModelNormal(mydate().numbersData)));
                        }
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [
                              //0.1,
                              0.9,
                              0.1,
                            ],
                            colors: [
                              //Color(0xFFBE12E3),
                              // Color(0xFF713094),
                              Colors.white,
                              Colors.white
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Icon(
                              catIcon[index],
                              size: 52,
                              color: Color(0xff4339E7),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              categList[index],
                              style: TextStyle(
                                  color: Color(0xff4339E7),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                            ),
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      );
  }
}
