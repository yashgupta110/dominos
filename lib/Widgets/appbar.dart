import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

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
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[850]!.withOpacity(0.7),
            spreadRadius: 8,
            blurRadius: 10,
            offset: const Offset(1, 0), 
          ),
        ],
      ),
      child: TabBar(
        controller: _tabController,
        splashFactory: InkRipple.splashFactory,
        tabAlignment: TabAlignment.fill,
        tabs: const <Widget>[
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(FlutterIcons.md_menu_ion),
                SizedBox(width: 8), // You can adjust this value as needed
                Text(
                  'Menu',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.local_pizza_outlined,
                ),
                SizedBox(width: 8), // You can adjust this value as needed
                Text(
                  '1+1 Offer',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
