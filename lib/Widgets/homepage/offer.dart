import 'package:dominos/Widgets/homepage/offerdetails.dart';
import 'package:dominos/data/appbar_data.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class Offer extends StatelessWidget {
  const Offer({super.key});

  static const items = 4;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70, // Set the height of the ListView
      width: MediaQuery.of(context).size.width, // Set the width of the ListView

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items, // Increase the number of items
        itemBuilder: (BuildContext context, int index) {
          if (index == items - 1) {
            return const Padding(
              padding: EdgeInsets.only(left: 10.0),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: () => {
                if (index == 0)
                  {
                    showModalBottomSheet(
                      isDismissible: true,
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: Colors.black54,
                      builder: (context) => const Offerdetails(),
                    )
                  }
              },
              child: Container(
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                  gradient: offergradients[index],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 12,
                    ),
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
                        SizedBox(
                          width: 240,
                          child: Text(
                            'Get 30% off up to ₹60 on your first order',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
