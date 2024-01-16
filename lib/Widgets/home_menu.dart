import 'package:dominos/Widgets/offers.dart';
import 'package:flutter/material.dart';
class Homemenu extends StatelessWidget{
  const Homemenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        children: [
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
            physics:
                const NeverScrollableScrollPhysics(), // GridView's scrolling
            shrinkWrap:
                true, // to make the GridView adapt its height to its children
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              childAspectRatio: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5 // Aspect ratio
            ),
            itemBuilder: (BuildContext context, int index) {
              return const Card(
                child: Center(
                  child: Text('Pizza'),
                ),
              );
            },
          ),
        ],
      ) ;
  }
  
  
}