import 'package:flutter/material.dart';

import '../data/appbar_data.dart';

import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:fluttericon/iconic_icons.dart';

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
      appBar: AppBar(
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
            },
          ),
        ],
        // bottom: TabBar(
        //   controller: _tabController,
        //   // isScrollable: true,
        //   tabAlignment: TabAlignment.center,
        //   tabs: <Widget>[
        //     Tab(
        //       child: Column(
        //         children: <Widget>[
        //           Text(titles[0]),
        //           const Text('---',style: TextStyle(fontSize: 11),),
        //         ],
        //       ),
        //     ),
        //     Tab(
        //       child: Column(
        //         children: <Widget>[
        //           Text(titles[1]),
        //           const Text('Select Store',style: TextStyle(fontSize: 11),),
        //         ],
        //       ),
        //     ),
        //     Tab(
        //       child: Column(
        //         children: <Widget>[
        //           Text(titles[2]),
        //           const Text('Select Store',style: TextStyle(fontSize: 11),),
        //         ],
        //       ),
        //     ),
        //     Tab(
        //       child: Column(
        //         children: <Widget>[
        //           Text(titles[3]),
        //           const Text('Next Station',style: TextStyle(fontSize: 11),),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        bottom: PreferredSize(
          preferredSize:  Size.fromHeight(kToolbarHeight),
          child: Container(
            alignment: Alignment.center,
            child: TabBar(
              controller: _tabController,
              tabAlignment: TabAlignment.center,
              indicator: BoxDecoration(),
              tabs: <Widget>[
                for (int i = 0; i < titles.length; i++)
                  Row(
                    children: [
                      Tab(
                        child: Column(
                          children: <Widget>[
                            Text(titles[i], ),
                            Text(
                              additionalTexts[i],
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
