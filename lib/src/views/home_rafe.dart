import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:make_yum/src/views/widget_options.dart';

class HomeScreenRafe extends StatefulWidget {
  const HomeScreenRafe({super.key});

  @override
  State<HomeScreenRafe> createState() => _HomeScreenRafeState();
}

class _HomeScreenRafeState extends State<HomeScreenRafe>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final int tabLength = baseWidgets.length;

  static const List<IconData> _tabIcons = [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.person_rounded,
    Icons.category_rounded,
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabLength, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = List.generate(tabLength, (index) {
      Icon icon = Icon(_tabIcons[index]);
      return Tab(
        icon: icon,
      );
    });
    return DefaultTabController(
      length: tabLength,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Recipes and Nutrition"),
        ),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            physics: const BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: baseWidgets,
          ),
        ),
        bottomNavigationBar: TabBar(
          controller: _tabController,
          tabs: tabs,
        ),
      ),
    );
  }
}
