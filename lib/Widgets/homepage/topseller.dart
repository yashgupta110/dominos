import 'package:flutter/material.dart';

class Topseller extends StatelessWidget {
  const Topseller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -40,
      right: -10,
      child: Stack(
        children: <Widget>[
          ShaderMask(
            shaderCallback: (Rect bounds) {
              return const LinearGradient(
                colors: [
                  Color.fromARGB(255, 222, 179, 81),
                  Color.fromARGB(255, 216, 138, 12)
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ).createShader(bounds);
            },
            child: const Icon(
              Icons.bookmark_sharp,
              size: 130,
              color: Colors.white,
            ),
          ),
          const Positioned(
            right: 32,
            top: 45,
            child: Column(
              children: [
                Text(
                  '''Domino's''',
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 64, 17),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,),
                ),
                Text(
                  'TOP 10',
                  style: TextStyle(
                      color: Color.fromARGB(255, 76, 64, 17),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
