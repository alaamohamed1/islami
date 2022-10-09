import 'package:flutter/material.dart';
import 'package:islami/Radios.dart';

class RadioControler extends StatefulWidget {
Radios responceradio;
var paly;
var puase;

RadioControler({
    required this.responceradio,
    required this.paly,
    required this.puase,
  });

  @override
  State<RadioControler> createState() => _RadioControlerState();

}

class _RadioControlerState extends State<RadioControler> {

@override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Text(widget.responceradio.name??'',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () =>widget.paly(), icon: Icon(Icons.play_arrow)),
              IconButton(onPressed: ()=> widget.puase(), icon: Icon(Icons.pause)),
            ],
          )
        ],

      ),

    );
  }
}
