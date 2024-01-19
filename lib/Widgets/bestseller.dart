import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 50,
                  height: 4.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 219, 201, 131),
                        Color.fromARGB(255, 161, 134, 38),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 8,
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
              child: const SizedBox(
                width: 50,
                height: 50,
                child: Icon(
                  FontAwesome5Solid.crown,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 50,
                  height: 4.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 161, 134, 38),
                        Color.fromARGB(255, 219, 201, 131),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
                fontWeight: FontWeight.w900, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 45,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 225, 220, 176),
                Color.fromARGB(255, 220, 209, 114),
                Color.fromARGB(255, 225, 220, 176)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MfgLabs.location,
                color: Color.fromARGB(255, 76, 64, 17),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'In Chennai',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 76, 64, 17)),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
