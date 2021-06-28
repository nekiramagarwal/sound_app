import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.blueAccent,
    systemNavigationBarColor: Colors.amberAccent,
  ));
  runApp(Sound());
}

class Sound extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
//using required keyword because of null safety if we use required keyword then
// we must pass the value of required datatype other wise create a error
  Expanded buildkey({required Color color,  required int soundnumber}) {
   // Expanded buildkey({ Color? color,   int? soundnumber}) {
    //we can also use for null safety (? and !)
    return Expanded(
      //flatbutton replace with the textbutton, elevatedbutton, and outlinedbutton .so don't use
      //flatbutton.
      child: FlatButton(
        color:color,
        onPressed: () {
          //playsound(soundnumber!);
          playsound(soundnumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildkey(color: Colors.red, soundnumber: 8),
            buildkey(color: Colors.orangeAccent, soundnumber: 9),
            buildkey(color: Colors.blueAccent, soundnumber: 10),
            buildkey(color: Colors.greenAccent, soundnumber: 11),
            buildkey(color: Colors.pinkAccent, soundnumber: 12),
            buildkey(color: Colors.purpleAccent, soundnumber: 13),
          ],
        ),
        ),
      ),
    );
  }
}
