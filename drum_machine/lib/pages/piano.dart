import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PianoPage extends StatefulWidget {
  const PianoPage({super.key});

  @override
  State<PianoPage> createState() => _PianoPageState();
}

class _PianoPageState extends State<PianoPage> {
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
                  buildDrumButton('Do', Colors.redAccent),
                  buildDrumButton('Re', Colors.cyan),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('Mi', Colors.yellowAccent),
                  buildDrumButton('Fa', Colors.purpleAccent),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('Sol', Colors.teal),
                  buildDrumButton('La', Colors.brown)
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildDrumButton('Si', Colors.blueGrey),
                  buildDrumButton('Do~', Colors.green),
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
