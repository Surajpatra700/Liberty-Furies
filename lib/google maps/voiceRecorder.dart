// import 'dart:async';
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'package:liberty_furies/actions/Utils.dart';
// import 'package:liberty_furies/google%20maps/voiceRecorder2.dart';
// import 'package:uuid/uuid.dart';

// class SearchLocation extends StatefulWidget {
//   const SearchLocation({super.key});

//   @override
//   State<SearchLocation> createState() => _SearchLocationState();
// }

// class _SearchLocationState extends State<SearchLocation> {
//   final recorder = SoundRecorder();

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     recorder.init();
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     recorder.dispose();
//   }

//   Widget buildStart() {
//     final isRecording = recorder.isRecording;
//     final text = isRecording ? "STOP" : "START";
//     final icon = isRecording ? Icons.stop : Icons.mic;
//     final primary = isRecording ? Colors.red : Colors.white;
//     final onPrimary = isRecording ? Colors.white : Colors.black;
//     return ElevatedButton.icon(
//       style: ElevatedButton.styleFrom(
//         minimumSize: Size(175, 50),
//         backgroundColor: primary,
//         foregroundColor: onPrimary,
//       ),
//       onPressed: () async {
//         final isRecording = await recorder.toggleRecording();
//         setState(() {});
//       },
//       icon: Icon(Icons.mic),
//       label: Text(
//         text,
//         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: Text("Voice Recorder"),
//         centerTitle: true,
//         backgroundColor: Colors.indigo.shade400,
//       ),
//       body: Center(
//         child: Center(
//           child: buildStart(),
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class VoiceRecorder extends StatefulWidget {
  const VoiceRecorder({super.key});

  @override
  State<VoiceRecorder> createState() => _VoiceRecorderState();
}

class _VoiceRecorderState extends State<VoiceRecorder> {
  final recorder = FlutterSoundRecorder();
  Future<Directory> path = getTemporaryDirectory();
  //final path = directoryPath.path;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initRecorder();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    recorder.closeRecorder();
    super.dispose();
  }

  Future initRecorder() async {
    final status = await Permission.microphone.request();

    if (status != PermissionStatus.granted) {
      throw 'Microphone permission not granted';
    }
    await recorder.startRecorder();
    // how often the progress is updated is checked using setSubscriptionDuration
    recorder.setSubscriptionDuration(Duration(microseconds: 500));
  }

  Future record() async {
    await recorder.startRecorder(toFile: "audio");
  }

  Future stop() async {
    await recorder.stopRecorder();
    //final audioFile = File('${path.path}');

    //print("Recorded audio: $audioFile");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<RecordingDisposition>(
            stream: recorder.onProgress,
            builder: (context, snapshot) {
              final duration =
                  snapshot.hasData ? snapshot.data!.duration : Duration.zero;

              String twoDigits(int n) => n.toString().padLeft(2, '0');
              final twoDigitMinutes =
                  twoDigits(duration.inMinutes.remainder(60));
              final twoDigitSeconds =
                  twoDigits(duration.inSeconds.remainder(60));

              return Text("${duration.inSeconds}",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold));
            },
          ),
          ElevatedButton(
            onPressed: () async {
              if (recorder.isRecording) {
                await stop();
              } else {
                await record();
              }
            },
            child: Icon(
              recorder.isRecording ? Icons.stop : Icons.mic,
              size: 80,
            ),
          ),
        ],
      ),
    );
  }
}
