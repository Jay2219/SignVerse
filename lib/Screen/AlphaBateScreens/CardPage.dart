import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardPage extends StatelessWidget {
  final String title;
  final String image;
  final List<Map<String, String>> description;

  CardPage(
      {required this.title, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Color(0xff4339E7),
        title: Text(title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  child: Image.asset(image),
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  description.length,
                      (index) {
                    final item = description[index];
                    final name = item['name'];
                    final link = item['link'];
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 170,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Color(0xff4339E7).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 170,
                            child: Image.asset(image),
                            decoration: BoxDecoration(
                              color: Color(0xff4339E7).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "$name",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          // Text(
                          //   "Name: $name",
                          //   style: TextStyle(fontSize: 18),
                          // ),
                          // Text(
                          //   "Link: $link",
                          //   style: TextStyle(fontSize: 18),
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

        ],
      ),
    );

  }
}
