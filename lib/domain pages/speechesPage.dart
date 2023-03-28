// ignore_for_file: library_private_types_in_public_api, no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:liberty_furies/screens/home_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoSpeeches extends StatefulWidget {
  const VideoSpeeches({Key? key}) : super(key: key);

  @override
  _VideoSpeechesState createState() => _VideoSpeechesState();
}

class _VideoSpeechesState extends State<VideoSpeeches> {
  late String videoTitle;
  // Url List
  final List<String> _videoUrlList = [
    "https://youtu.be/wu0n7kWYIY4",
    "https://youtu.be/A9fGG8gvE9U",
    "https://youtu.be/jG-4kBIDAzA",
    "https://youtu.be/iCwKM6uB71I",
    "https://youtu.be/5DtDJABXkIo",
    "https://youtu.be/UjI_bspcUHA",
    "https://youtu.be/mNJhKLia_2w",
    "https://youtu.be/9dXXxP8yfow",
    "https://youtu.be/bLjmkFVjNS4",
    "https://youtu.be/t1jwf2dMoc0",
    "https://youtu.be/3MieUMpBMYI",
  ];

  List<YoutubePlayerController> lYTC = [];

  Map<String, dynamic> cStates = {};

  @override
  void initState() {
    super.initState();
    fillYTlists();
  }

  fillYTlists() {
    for (var i in _videoUrlList) {
      String _id = YoutubePlayer.convertUrlToId(i)!;
      final _ytController = YoutubePlayerController(
        initialVideoId: _id,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          enableCaption: true,
          captionLanguage: 'en',
        ),
      );

      _ytController.addListener(() {
        print('for $_id got isPlaying state ${_ytController.value.isPlaying}');
        if (cStates[_id] != _ytController.value.isPlaying) {
          if (mounted) {
            setState(() {
              cStates[_id] = _ytController.value.isPlaying;
            });
          }
        }
      });

      lYTC.add(_ytController);
    }
  }

  @override
  void dispose() {
    for (var element in lYTC) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Scaffold(
        //backgroundColor: Colors.indigo.shade100,
        appBar: AppBar(
          title: const Text('Inspiratonal Videos'),
          //backgroundColor: Color.fromARGB(255, 73, 173, 77),
          backgroundColor: Colors.indigo.shade300,
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                icon: Icon(Icons.home)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: _videoUrlList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              YoutubePlayerController _ytController = lYTC[index];
              String _id = YoutubePlayer.convertUrlToId(_videoUrlList[index])!;
              String curState =
                  '   Liberty Furies: Inspirational Speeches';
              if (cStates[_id] != null) {
                curState = cStates[_id]
                    ? 'playing'
                    : '   Liberty Furies: Inspirational Speeches';
              }
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 220.0,
                      decoration: const BoxDecoration(
                        color: Color(0xfff5f5f5),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: YoutubePlayer(
                          controller: _ytController,
                          showVideoProgressIndicator: true,
                          progressIndicatorColor: Colors.lightBlueAccent,
                          bottomActions: [
                            CurrentPosition(),
                            ProgressBar(isExpanded: true),
                            FullScreenButton(),
                          ],
                          onReady: () {
                            print('onReady for $index');
                          },
                          onEnded: (YoutubeMetaData _md) {
                            _ytController.seekTo(const Duration(seconds: 0));
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        curState,
                        textScaleFactor: 1.5,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
