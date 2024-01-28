import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class OverimageData extends StatelessWidget {
  const OverimageData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('₹109',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)),
            Text(
              'Regular | New Hand Tossed  >',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  
                  decorationThickness: 1.5,
                  decorationColor: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          height: 50,
          // width: 10,
          child: FilledButton(
            onPressed: () {
              print('ontap');
            },
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 186, 29, 17)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Add',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Icon(Entypo.plus),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
