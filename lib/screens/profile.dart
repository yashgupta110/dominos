import 'package:dominos/screens/userscreen.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  final String phoneNumber;
  const ProfileScreen({super.key, required this.phoneNumber});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen(),)),
            child: SizedBox(
              width: double.infinity,
              height: 130,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 210, 235, 255),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          LineariconsFree.user_1,
                          size: 25,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'user',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              widget.phoneNumber
                                  .substring(3, widget.phoneNumber.length),
                              style:
                                  const TextStyle(fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                          color: Colors.blue[900], fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ),
          GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            notificationPredicate: (notification) => true,
            color: const Color.fromARGB(255, 128, 165, 197),
            child: ListView(
              padding: const EdgeInsets.only(left: 10, right: 10),
              shrinkWrap: true,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemExtent: 47,
                  semanticChildCount: 4,
                  children: [
                    ListTile(
                      title: const Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text('Menu'),
                      ),
                      onTap: () {
                        // Navigator.pop(context);
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
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 16,
                  endIndent: 10,
                  indent: 10,
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemExtent: 47,
                  children: [
                    ListTile(
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      tileColor: const Color.fromARGB(24, 0, 0, 0),
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
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 12,
                  endIndent: 10,
                  indent: 10,
                ),
                ListTile(
                  title: const Text('Bulk Order'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 12,
                  endIndent: 10,
                  indent: 10,
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemExtent: 47,
                  children: [
                    ListTile(
                      tileColor: const Color.fromARGB(24, 0, 0, 0),
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
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: const Text('Contact US'),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
          const Align(
            alignment: FractionalOffset.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 25,
              ),
              child: Text(
                "v11.4.25",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 80, 80, 80),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
