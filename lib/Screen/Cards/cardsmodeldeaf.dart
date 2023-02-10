// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ssip_signverse_project/Screen/Cards/model.dart';

class CardsModel extends StatelessWidget {
  final model data;

  CardsModel(this.data);

  @override
  Widget build(BuildContext context) {
    final FlutterTts flutterTts = FlutterTts();

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
                "Sign Language Communication",
                style: const TextStyle(fontFamily: "Poppins" , color:  Color(0xff4339E7) , fontSize: 17),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffF3F5F9),
        body: GridView.builder(
          padding: EdgeInsets.only(top: 25),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: data.cardsname.length,
          itemBuilder: (BuildContext context, int index) {
            return new GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FlipCard(
                  back: Container(
                    height: 150,
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.grey,
                      margin: EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 0 , color: Colors.white)),
                      child: Center(
                        child: InkWell(
                            onTap: () async {
                              await flutterTts.speak(data.cardsname[index]);
                            },
                            child: Text(
                              data.cardsname[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 35,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4339E7)),
                            )),
                      ),
                    ),
                  ),
                  front: Container(
                    height: 150,
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      shadowColor: Colors.grey,
                      margin: EdgeInsets.all(10),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.white
                        ),
                      ),
                      child: Image.network(
                        data.src[index],
                        // scale: 5,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );

  }
}
