import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderType extends StatefulWidget {
  const OrderType({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OrderTypeState();
  }
}

class _OrderTypeState extends State<OrderType> {
  int _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoSlidingSegmentedControl<int>(
      thumbColor: const Color.fromRGBO(46, 46, 46, 1),
      padding: const EdgeInsets.only(left: 10, right: 10, ),
      backgroundColor: Colors.grey[200]!,
      children: <int, Widget>{
        0: SizedBox(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Delivery',
                style: TextStyle(
                    color: _sliding == 0 ? Colors.white : Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Select Location',
                style: TextStyle(
                    color: _sliding == 0 ? Colors.white : Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        1: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Takeaway',
              style: TextStyle(
                  color: _sliding == 1 ? Colors.white : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Select Store',
              style: TextStyle(
                  color: _sliding == 1 ? Colors.white : Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        2: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Dine-in',
              style: TextStyle(
                  color: _sliding == 2 ? Colors.white : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Select Store',
              style: TextStyle(
                  color: _sliding == 2 ? Colors.white : Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        3: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Deliver to train',
              style: TextStyle(
                  color: _sliding == 3 ? Colors.white : Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Next Station',
              style: TextStyle(
                  color: _sliding == 3 ? Colors.white : Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      },
      onValueChanged: (int? value) {
        setState(() {
          _sliding = value!;
        });
      },
      groupValue: _sliding,
    );
  }
}
