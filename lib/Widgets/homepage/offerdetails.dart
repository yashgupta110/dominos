import 'package:flutter/material.dart';

class Offerdetails extends StatefulWidget {
  const Offerdetails({super.key});

  @override
  State<Offerdetails> createState() => _OfferdetailsState();
}

class _OfferdetailsState extends State<Offerdetails> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      controller: DraggableScrollableController(),
      expand: true,
      snapAnimationDuration: const Duration(milliseconds: 3),
      shouldCloseOnMinExtent: true,
      minChildSize: 0.0,
      initialChildSize: 0.85,
      maxChildSize: 0.85,
      snap: true,
      snapSizes: const [0.65],
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
            color: Colors.white,
          ),
          child: ListView(
            controller: scrollController,
            children: const [
              Center(
                child: Text(
                  'Offer Details',
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
