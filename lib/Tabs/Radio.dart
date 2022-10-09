import 'dart:convert';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:islami/Tabs/radiocontroler.dart';
import '../RadioResponce.dart';

class RadioScreen extends StatefulWidget {
  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  late Future<RadioResponce> responceradio;
  late AudioPlayer audioPlayer;

  @override
  void initState() {
    // TODO: implement initState
    responceradio = fatchRadio();
    audioPlayer = AudioPlayer();
  }

  play(String url) async {
    int result = await audioPlayer.play(url);
  }

  puse() async {
    await audioPlayer.pause();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<RadioResponce>(
      future: responceradio,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Image.asset('assets/images/Radioo.png'),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) => RadioControler(
                  responceradio: snapshot.data!.radios![index],
                  puase: puse(),
                  paly: play(snapshot.data!.radios![index].radioUrl??''),

                ),
                itemCount: snapshot.data!.radios!.length,
                scrollDirection: Axis.horizontal,
                physics: PageScrollPhysics(),
              ))
            ],
          );
          ;
        } else if (snapshot.hasError) {
          return IconButton(
              onPressed: () {
                responceradio = fatchRadio();
              },
              icon: Center(
                child: Icon(
                  Icons.refresh,
                  color: Theme.of(context).primaryColor,
                  size: 40,

                ),

              ));
        } else {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        }
      }),
    );
  }

  Future<RadioResponce> fatchRadio() async {
    final responce = await http
        .get(Uri.parse('http://api.mp3quran.net/radios/radio_arabic.json'));
    if (responce.statusCode == 200) {
      return RadioResponce.fromJson(
          jsonDecode(utf8.decode(responce.bodyBytes)));
    } else {
      throw Exception('faild');
    }
  }
}
