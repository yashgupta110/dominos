import 'package:flutter/material.dart';

import '../data/appbar_data.dart';

class Dtabbar extends StatefulWidget {
  const Dtabbar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Dtabbar();
  }
}

class _Dtabbar extends State<Dtabbar> with TickerProviderStateMixin {
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
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: TabBar(
          controller: _tabController,
          tabAlignment: TabAlignment.center,
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey[850],
          ),
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[850],
          tabs: <Widget>[
            for (int i = 0; i < titles.length; i++)
              Row(
                children: [
                  Tab(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          titles[i],
                          style: const TextStyle(fontSize: 12),
                        ),
                        Text(
                          additionalTexts[i],
                          style: const TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
