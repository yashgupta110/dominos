import 'package:dominos/Widgets/homepage/home_menu.dart';
import 'package:flutter/material.dart';

class Offerdetails extends StatefulWidget {
  const Offerdetails({super.key});

  @override
  State<Offerdetails> createState() => _OfferdetailsState();
}

class _OfferdetailsState extends State<Offerdetails>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,animationBehavior:AnimationBehavior.normal,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      animationController: _animationController,
      enableDrag: true, 
      
      constraints: const BoxConstraints(
        minHeight: 100,
        maxHeight: 500,
      ),
      onClosing: () => const Homemenu(),
      builder: (context) => Container(
        color: Colors.white,
        child: const Center(
          child: Text(
            'Offer Details',
          ),
        ),
      ),
    );
  }
}

//  return DraggableScrollableSheet(
    //             controller: DraggableScrollableController(),
    //             snapAnimationDuration: const Duration(milliseconds: 500),
    //             shouldCloseOnMinExtent: false,
    //             initialChildSize: 0.8,
    //             minChildSize: 0.5,
    //             maxChildSize: 0.8,
    //             snap: true,
    //             expand: true,
    //             snapSizes: const [0.5,
    //               0.6,
    //               0.8
    //             ], // The extents that the sheet can snap to
    //             builder:
    //                 (BuildContext context, ScrollController scrollController) {
    //               return ClipRRect(
    //                 borderRadius: const BorderRadius.vertical(
    //                     top: Radius.circular(
    //                         30.0)), // Rounded corners at the top
    //                 child: Container(
    //                   color: Colors.white,
    //                   child: const Center(
    //                     child: Text(
    //                       'Offer Details',
    //                     ),
    //                   ),
    //                 ),
    //               );
    //             },
    //           );
