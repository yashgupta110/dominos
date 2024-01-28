import 'package:flutter/material.dart';

import 'package:dominos/Widgets/menupage/menufilter.dart';
import 'package:dominos/data/appbar_data.dart';
import 'package:icons_flutter/icons_flutter.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _tabController = TabController(length: data.length, vsync: this);

    _pageController.addListener(() {
      if (_pageController.page!.round() != _tabController.index) {
        _tabController.animateTo(_pageController.page!.round());
      }
    });

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(
          _tabController.index,
          duration: const Duration(milliseconds: 3),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: -4,
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              splashColor: Colors.grey[800],
              child: const Icon(Icons.arrow_back),
            );
          },
        ),
        title: const Text(
          "Domino's Menu",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: const Icon(Icons.search_outlined),
                onPressed: () {
                  print("Search button is pressed.");
                  // Add your search functionality here
                },
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(120.0), // Set this to your needs
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Divider(
                height: 8,
                thickness: 1,
                color: Colors.grey[300],
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: const Menufilter(),
              ),
              Divider(
                height: 8,
                thickness: 1,
                color: Colors.grey[300],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 350,
                    child: TabBar(
                      controller: _tabController,
                      onTap: (index) {
                        _pageController.animateToPage(
                          index,
                          duration: const Duration(milliseconds: 3),
                          curve: Curves.ease,
                        );
                      },
                      indicator: const UnderlineTabIndicator(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        borderSide: BorderSide(
                            width: 5,
                            color: Colors.red,
                            strokeAlign: BorderSide.strokeAlignInside),
                      ),
                      indicatorSize: TabBarIndicatorSize.tab,
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      tabs: [
                        for (final tab in data)
                          Tab(
                            child: Text(
                              tab,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 60,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        FlutterIcons.list_unordered_oct,
                        size: 25,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          for (final i in data)
            Center(
              child: Text(
                i,
                style: const TextStyle(fontSize: 30),
              ),
            ),
        ],
      ),
    );
  }
}
