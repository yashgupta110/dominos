import 'package:flutter/material.dart';

class BestsellerList extends StatelessWidget {
  const BestsellerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.only(
        left: 14,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            width: 360,
            height: 360,
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
          
          Container(
            
            width: 360,
            height: 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: <Color>[
                  Color.fromARGB(255, 20, 20, 20).withOpacity(0.98), // Adjust the opacity as needed
                  Color.fromARGB(255, 38, 36, 36).withOpacity(0.96),
                  Color.fromARGB(255, 38, 36, 36).withOpacity(0.92)
                ],
                stops: const[0.15, 0.8,1],
              ),
              borderRadius: const  BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
