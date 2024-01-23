import 'package:flutter/material.dart';

import 'package:dominos/Widgets/overImageData.dart';

class BestsellerList extends StatelessWidget {
  const BestsellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container( 
            width: 360,
            height: 340,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.dominos.co.in/new_margherita_2502.jpg',
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Stack(
              children: <Widget>[
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 190, 143, 34),
                        Color.fromARGB(255, 120, 75, 3)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds);
                  },
                  child: const Icon(
                    Icons.bookmark_sharp,
                    size: 100,
                    color: Colors
                        .white, // This color will be replaced by the gradient
                  ),
                ),
                const Positioned(
                  right:
                      0, // Adjust this value as needed to position the text on the icon
                  bottom:
                      0, // Adjust this value as needed to position the text on the icon
                  child: Text(
                    'Your Text Here',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10, // Adjust the font size as needed
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 150,
            child: Container(
              height: 25,
              width: 120,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 40, 146, 50),
                    Color.fromARGB(255, 20, 69, 23)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    bottomLeft: Radius.circular(4)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: Checkbox.width,
                  ),
                  Text(
                    'Customised >',
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.white),
                  ),
                  SizedBox(
                    width: 4,
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 90,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Margherita',
                  // textAlign:TextAlign.right ,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Classic delight with 100% real mozzarella cheese',
                  // textAlign:TextAlign.right ,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            child: Container(
              height: 1.8,
              width: 360,
              color: Colors.grey,
            ),
          ),
          Container(
            width: 360,
            height: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  const Color.fromARGB(255, 21, 21, 21)
                      .withOpacity(1), // Adjust the opacity as needed
                  const Color.fromARGB(203, 39, 39, 39).withOpacity(0.98),
                  const Color.fromARGB(226, 72, 72, 72).withOpacity(0.97),
                ],
                stops: const [0.15, 0.5, 1],
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
            ),
            child: const OverimageData(),
          ),
        ],
      ),
    );
  }
}
