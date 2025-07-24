import 'package:meditation_app/const.dart';
import 'package:meditation_app/modes/item_model.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Item> items = [
    Item(
      name: 'Forest',
      auidioPath: 'meditation_audios/forest.mp3',
      imagePath: 'meditation_images/forest.jpeg',
    ),

    Item(
      name: 'Night',
      auidioPath: 'meditation_audios/night.mp3',
      imagePath: 'meditation_images/night.jpeg',
    ),

    Item(
      name: 'Ocean',
      auidioPath: 'meditation_audios/ocean.mp3',
      imagePath: 'meditation_images/ocean.jpeg',
    ),

    Item(
      name: 'Waterfall',
      auidioPath: 'meditation_audios/waterfall.mp3',
      imagePath: 'meditation_images/waterfall.jpeg',
    ),

    Item(
      name: 'Wind',
      auidioPath: 'meditation_audios/wind.mp3',
      imagePath: 'meditation_images/wind.jpeg',
    ),
  ];

  final AudioPlayer audioPlayer = AudioPlayer();
  int? playingIndex;
  // Widget showIcon(int currentIndex) {
  //   if (playingIndex == currentIndex) {
  //     return FaIcon(FontAwesomeIcons.stop, color: Colors.white);
  //   } else {
  //     return FaIcon(FontAwesomeIcons.play, color: Colors.white);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 112, 111, 111),
      body: SafeArea(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(items[index].imagePath),
                  ),
                ),
                child: ListTile(
                  title: Text(items[index].name, style: nameStyle),

                  leading: IconButton(
                    icon: playingIndex == index
                        ? FaIcon(FontAwesomeIcons.stop, color: Colors.white)
                        : FaIcon(FontAwesomeIcons.play, color: Colors.white),
                    onPressed: () {
                      if (playingIndex == index) {
                        setState(() {
                          playingIndex = null;
                        });
                        audioPlayer.stop();
                      } else {
                        audioPlayer.setAsset(items[index].auidioPath);
                        audioPlayer.play();

                        setState(() {
                          playingIndex = index;
                        });
                      }
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
