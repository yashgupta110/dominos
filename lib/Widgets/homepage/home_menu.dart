import 'package:dominos/Widgets/homepage/bestseller.dart';
import 'package:dominos/Widgets/homepage/offers.dart';
import 'package:dominos/Widgets/homepage/segmentbutton.dart';
import 'package:dominos/data/appbar_data.dart';
import 'package:flutter/material.dart';

class Homemenu extends StatelessWidget {
  const Homemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        // ***ordertype widget***//
        const OrderType(),

        const Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text(
                'Offers for you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Offers(),
            ),
          ],
        ),
        const Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Text(
                  'What are you carving for?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(), // GridView's scrolling
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              childAspectRatio: 0.85,
              crossAxisSpacing: 10 // Aspect ratio
              ),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ClipOval(
                  child: Image.network(homeimages[index]),
                ),
                Text(
                  data[index],
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 8,
        ),
        Container(
          height: 520,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 193, 184, 107),
              Color.fromARGB(255, 255, 255, 255)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: const Bestseller(),
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 8,
        ),
        Container(
          height: 50,
          color: Colors.white,
        ),
      ],
    );
  }
}
