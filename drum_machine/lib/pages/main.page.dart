import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrumPage extends StatefulWidget {
  const DrumPage({super.key});

  @override
  State<DrumPage> createState() => _DrumPageState();
}

class _DrumPageState extends State<DrumPage> {
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
                  buildDrumButton('woo', Colors.yellow),
                  buildDrumButton('clap2', Colors.orangeAccent),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('crash', Colors.pink),
                  buildDrumButton('oobah', Colors.red),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('how', Colors.blue),
                  buildDrumButton('clap3', Colors.brown)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('ridebel', Colors.blueGrey),
                  buildDrumButton('clap1', Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: const BottomFlashyTabBar(),
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
