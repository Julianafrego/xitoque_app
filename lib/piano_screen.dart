import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xiloque_app/mycolors.dart';

class PianoScreen extends StatelessWidget {
  const PianoScreen({super.key});

  void _playSound(String soundName) async {
    final player = AudioPlayer(); // Nova instância do AudioPlayer

    await player.play(AssetSource('sons/$soundName.wav'));
  }

  @override
  Widget build(BuildContext context) {
    // obter altura da tela
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double whitekeyWidth = screenWidth / 7;
    double blackkeyWidth = whitekeyWidth * 0.6;
    double blackkeyHeight = screenHeight * 0.4;
    double space = screenHeight * 0.006;
    screenHeight = screenHeight * 0.7;

    double spaceBlackKey = whitekeyWidth + space;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Stack(children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _playSound('1c'), // Toca o som ao toque
                child: Container(
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.only(bottom: 30),
                  height: screenHeight,
                  decoration: BoxDecoration(
                    color: MyColors.branco,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text('DÓ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          decoration: TextDecoration.none)),
                ),
              ),
            ),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('3d'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('RÉ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ))),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('5e'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('MI',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ))),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('6f'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('FÁ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ))),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('8g'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('SOL',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ))),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('10a'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('LÁ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ))),
            SizedBox(width: space),
            Expanded(
                child: GestureDetector(
                    onTap: () => _playSound('12b'),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      padding: const EdgeInsets.only(bottom: 30),
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.branco,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('SI',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))
          ],
        ),
        Positioned(
            left: whitekeyWidth - blackkeyWidth / 2,
            child: SizedBox(
                height: blackkeyHeight,
                width: blackkeyWidth,
                child: GestureDetector(
                    onTap: () => _playSound('2db'),
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('DÓ#',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))),
        Positioned(
            left: whitekeyWidth - blackkeyWidth / 2 + whitekeyWidth + space,
            child: SizedBox(
                height: blackkeyHeight,
                width: blackkeyWidth,
                child: GestureDetector(
                    onTap: () => _playSound('4eb'),
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('RÉ#',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))),
        Positioned(
            left: whitekeyWidth - blackkeyWidth / 2 + (3 * spaceBlackKey),
            child: SizedBox(
                height: blackkeyHeight,
                width: blackkeyWidth,
                child: GestureDetector(
                    onTap: () => _playSound('7gb'),
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('FÁ#',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))),
        Positioned(
            left: whitekeyWidth - blackkeyWidth / 2 + (4 * spaceBlackKey),
            child: SizedBox(
                height: blackkeyHeight,
                width: blackkeyWidth,
                child: GestureDetector(
                    onTap: () => _playSound('9ab'),
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('SOL#',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))),
        Positioned(
            left: whitekeyWidth - blackkeyWidth / 2 + (5 * spaceBlackKey),
            child: SizedBox(
                height: blackkeyHeight,
                width: blackkeyWidth,
                child: GestureDetector(
                    onTap: () => _playSound('11bb'),
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text('LÁ#',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    )))),
        Positioned(
            left: screenWidth * 0.3,
            top: screenHeight + 10,
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  alignment: Alignment.center,
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.17,
                  padding: const EdgeInsets.only(
                    bottom: 10,
                  ),
                  decoration: BoxDecoration(
                    color: MyColors.laranja,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Icon(Icons.arrow_back,
                      color: Colors.black, size: 50),
                )))
      ]),
    );
  }
}
