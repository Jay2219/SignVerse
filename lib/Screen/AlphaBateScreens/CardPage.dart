import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardPage extends StatefulWidget {
  final String title;
  final String image;
  final List<Map<String, String>> description;
  CardPage(
      {required this.title, required this.image, required this.description});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F5F9),
      appBar: AppBar(
        backgroundColor: Color(0xff4339E7),
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: "Poppins"),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  //
                  width: 390,
                  height: 200,
                  margin: const EdgeInsets.only(bottom: 25, top: 25),
                  child: Image.asset(widget.image),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  widget.description.length,
                  (index) {
                    final item = widget.description[index];
                    final name = item['name'];
                    String link = item['link'] as String;
                    return GestureDetector(
                      onTap: () {
                        print("The link is " + link!);
                        final videoURL = link;
                        final videoID =
                            YoutubePlayer.convertUrlToId(videoURL) as String;
                        print("The ID is " + videoID);
                        YoutubePlayerController _controller =
                            YoutubePlayerController(
                          initialVideoId: videoID,
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: false,
                          ),
                        );
                        showModalBottomSheet(
                          isScrollControlled: true,
                          clipBehavior: Clip.antiAlias,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              topRight: Radius.circular(25),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 700,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      name!,
                                      style: const TextStyle(
                                          color: Color(0xff4339E7),
                                          fontFamily: "Poppins",
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 200,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 10, color: Colors.black)),
                                    child: YoutubePlayer(
                                      controller: _controller,
                                      showVideoProgressIndicator: true,
                                      bottomActions: [
                                        CurrentPosition(),
                                        ProgressBar(isExpanded: true),
                                        PlaybackSpeedButton(),
                                        RemainingDuration(),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Center(
                                        child: Text(
                                          "Close",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                            color: Color(0xff4339E7),
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 170,
                              child: Image.asset(widget.image),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                            ),

                            const SizedBox(height: 10),
                            Text(
                              "$name",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Poppins"),
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
