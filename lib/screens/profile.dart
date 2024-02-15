import 'package:dominos/data/appbar_data.dart';
import 'package:dominos/screens/authscreen.dart';
import 'package:dominos/screens/userscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

class ProfileScreen extends StatefulWidget {
  final String phoneNumber;
  const ProfileScreen({super.key, required this.phoneNumber});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

List<Widget> createDrawerItemsWithDividers() {
  final drawerItemsWithDividers = <Widget>[];

  for (int i = 0; i < drawerdata.length; i++) {
    if (i == 4 || i == 8) {
      drawerItemsWithDividers.add(
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 2),
          child: Container(
            color: Colors.black26,
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                drawerdata[i],
              ),
            ),
          ),
        ),
      );
    } else {
      drawerItemsWithDividers.add(
        Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 4, bottom: 2),
          child: Container(
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                drawerdata[i],
              ),
            ),
          ),
        ),
      );
    }

    if (i == 3 || i == 6 || i == 7) {
      drawerItemsWithDividers.add(
        const Divider(
          color: Colors.grey,
          endIndent: 10,
          indent: 10,
        ),
      );
    }
  }

  return drawerItemsWithDividers;
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
          StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.active) {
                final User? user = snapshot.data;
                if (user == null) {
                  return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Authscreen(),
                            ));
                      },
                      child: Text('Login'));
                } else {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserScreen(),
                        )),
                    child: Container(
                      height: 130,
                      color: const Color.fromARGB(255, 210, 235, 255),
                      padding:
                          const EdgeInsets.only(top: 40, left: 20, right: 20),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    widget.phoneNumber.length >= 3 ? widget.phoneNumber.substring(3) : widget.phoneNumber,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  );
                }
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 160,
            child: GlowingOverscrollIndicator(
              notificationPredicate: (notification) => true,
              axisDirection: AxisDirection.down,
              color: const Color.fromARGB(255, 128, 165, 197),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: createDrawerItemsWithDividers().length,
                  itemBuilder: (context, index) {
                    return createDrawerItemsWithDividers()[index];
                  }),
            ),
          ),
          const Align(
            alignment: FractionalOffset.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 20,
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
