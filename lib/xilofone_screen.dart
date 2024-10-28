import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:xiloque_app/mycolors.dart';
import 'package:xiloque_app/piano_screen.dart';

class XilofoneScreen extends StatelessWidget {
  const XilofoneScreen({super.key});

  void _playSound(String soundName) async {
    final player = AudioPlayer(); // Nova instância do AudioPlayer

    await player.play(AssetSource('sons/$soundName.wav'));
  }

  @override
  Widget build(BuildContext context) {
    // obter altura da tela
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    screenHeight = screenHeight * 0.91;
    double space = screenHeight * 0.006;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: Column(children: [
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _playSound('1c'), // Toca o som ao toque
                child: Container(
                  alignment: Alignment.center,
                  height: screenHeight * 0.8,
                  decoration: BoxDecoration(
                    color: MyColors.vermelho,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.78,
                      decoration: BoxDecoration(
                        color: MyColors.laranja,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.76,
                      decoration: BoxDecoration(
                        color: MyColors.amarelo,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.74,
                      decoration: BoxDecoration(
                        color: MyColors.verde,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.72,
                      decoration: BoxDecoration(
                        color: MyColors.azul,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.70,
                      decoration: BoxDecoration(
                        color: MyColors.roxo,
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
                      alignment: Alignment.center,
                      height: screenHeight * 0.68,
                      decoration: BoxDecoration(
                        color: MyColors.rosa,
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
        GestureDetector(
            onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const PianoScreen(), // Substitua com o nome da sua página
                    ),
                  )
                },
            child: Container(
              alignment: Alignment.center,
              width: screenwidth * 0.4,
              height: screenHeight * 0.13,
              padding: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: MyColors.laranja,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Icon(Icons.piano_rounded,
                  color: Colors.black, size: 50),
            ))
      ]),
    );
  }
}
