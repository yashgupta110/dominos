import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class Bestseller extends StatelessWidget{
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 77, 66, 25),
                    Color.fromARGB(255, 196, 162, 25),
                    Color.fromARGB(255, 77, 66, 25)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
                child: Container(
                  width: 50,
                  height: 50,
                  child: const Icon(
                    FontAwesome5Solid.crown,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 157, 134, 52),
                    Color.fromARGB(255, 57, 47, 7)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ).createShader(bounds),
                child: const Text(
                  'TOP 10 Bestsellers',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          );
  }

}