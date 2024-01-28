import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import 'package:dominos/Widgets/homepage/offerdetails.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () => {
            showModalBottomSheet(
              isDismissible: true,
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              barrierColor: Colors.black54,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height *
                    0.9, // 90% of screen height
                child: const Offerdetails(),
              ),
            )
          },
          child: Container(
            width: 340,
            height: 60,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 6, 108, 77),
                    Color.fromARGB(255, 16, 158, 129)
                  ]),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(MaterialCommunityIcons.ticket_percent,
                            color: Colors.white, size: 25),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Up to ₹60 OFF',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Get 30% off up to ₹60 on your first order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'View',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () => {
            print('ontab'),
            // *****ontab functionality ****
            // Navigator.pushNamed(context, '/offers')
          },
          child: Container(
            width: 340,
            height: 60,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color.fromARGB(255, 11, 53, 118),
                    Color.fromARGB(255, 21, 99, 177)
                  ]),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Icon(MaterialCommunityIcons.ticket_percent,
                            color: Colors.white, size: 25),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Up to ₹60 OFF',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Get 30% off up to ₹60 on your first order',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                  ),
                  child: const Text(
                    'View',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
