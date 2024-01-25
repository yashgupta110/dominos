import 'package:flutter/material.dart';

import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/iconic_icons.dart';

import 'package:dominos/Widgets/homepage/appbar.dart';
import 'package:dominos/Widgets/homepage/home_menu.dart';
import '../data/appbar_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: titles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        notificationPredicate: (notification) => true,
        color: const Color.fromARGB(255, 128, 165, 197)
        ,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                // floating: true,
                // snap: true,
                leading: IconButton(
                  icon: const Icon(MfgLabs.location),
                  color: const Color.fromARGB(255, 168, 36, 26),
                  iconSize: 15,
                  onPressed: () {
                    // Handle the map icon tap here
                  },
                ),
                title: const Text('Home'),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Iconic.user),
                    color: const Color.fromARGB(255, 60, 59, 59),
                    onPressed: () {
                      // Handle the profile icon tap here
                      print('Profile icon tapped');
                    },
                  ),
                ],
              ),
            ];
          },
          body: const Homemenu(),
        ),
      ),
      bottomNavigationBar: const Dtabbar(),
    );
  }
}
