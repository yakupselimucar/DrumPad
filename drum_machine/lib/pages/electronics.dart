import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  final oynatici = AudioPlayer();

  void playFonksiyon(String musicAdi) {
    oynatici.play(
      AssetSource("$musicAdi.wav"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //BİR COLUMN İÇERİSİNDEKİ HERHANGİ BİR ÇOCUK EXPANDED ALDIYSA O DİKEYDE GENİŞLER
            //BİR ROW İÇERİSİNDEKİ HERHANGİ BİR ÇOCUK EXPANDED ALDIYSA O YATAYDA GENİŞLER
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('', Colors.yellow),
                  buildDrumButton('', Colors.orangeAccent),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('', Colors.pink),
                  buildDrumButton('', Colors.red),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('', Colors.blue),
                  buildDrumButton('', Colors.brown)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('', Colors.blueGrey),
                  buildDrumButton('', Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: BottomFlashyTabBar(),
    );
  }

  Widget buildDrumButton(String melodi, Color renk) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playFonksiyon(melodi);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: renk,
          ),
          //Center yapmazsan Container; text boyutu kadar oluyor
          alignment: Alignment.center,
          child: Text(
            melodi,
            style: GoogleFonts.sedgwickAveDisplay(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
