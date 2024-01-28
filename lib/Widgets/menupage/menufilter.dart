import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menufilter extends StatefulWidget {
  const Menufilter({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Menufilter();
  }
}

class _Menufilter extends State<Menufilter> {
  int selectedchip = -1;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,

      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        FilterChip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Veg Only'),
                if (selectedchip == 0) const Icon(Icons.close_sharp,size: 20,),
              ],
            ),
            padding: const EdgeInsets.all(6),
            labelPadding: EdgeInsets.zero,
            side: const BorderSide(width: 2, color: Colors.grey),
            selected: selectedchip == 0,
            showCheckmark: false,
            onSelected: (bool value) {
              setState(() {
                selectedchip = value ? 0 : -1;
              });
            }),
        FilterChip(
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Non Veg Only'),
                if (selectedchip == 1) const Icon(Icons.close_sharp,size: 20,),
              ],
            ),
            padding: const EdgeInsets.all(6),
            labelPadding: EdgeInsets.zero,
            side: const BorderSide(width: 2, color: Colors.grey),
            selected: selectedchip == 1,
            showCheckmark: false,
            onSelected: (bool value) {
              setState(() {
                selectedchip = value ? 1 : -1;
              });
            }),
        FilterChip(
            padding: const EdgeInsets.all(6),
            labelPadding: EdgeInsets.zero,
            label:const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Sort by'),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  CupertinoIcons.arrow_up_arrow_down,
                  size: 16,
                  color: Colors.black,
                )
              ],
            ),
            onSelected: (bool value) {}),

        // Add more chips as needed
      ],
    );
  }
}
