import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreen();
  }
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: double.tryParse('350'),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            height: 130,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 192, 224, 250),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Column(
            // shrinkWrap: true,
            // itemExtent: 46,
            // semanticChildCount: 14,
            children: [
              ListTile(
                title: const Text('Menu'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Deals & Offers'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('1+1 Offer'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Deliver On Train'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Divider(height: 1,),
              ListTile(
                title: const Text('Track Order'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Order History'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Domino\'s Wallet'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Bulk Order'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Change Language'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Feedback'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Nutritional Information'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Terms & Conditions'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Contact US'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          const Align(
            alignment: FractionalOffset.bottomRight,
            
            child: Padding(
              padding: EdgeInsets.only(right: 25,),
              child:  Text(
                "v11.4.25",
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 80, 80, 80),),
                textAlign: TextAlign.right,
              ),
            ),
          )
        ],
      ),
    );
  }
}
