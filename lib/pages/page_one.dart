import 'package:basic_app_layout_with_list_view/components/custom_drawer.dart';
import 'package:basic_app_layout_with_list_view/models/drink.dart';
import 'package:basic_app_layout_with_list_view/models/user.dart';
import 'package:basic_app_layout_with_list_view/pages/tabs/tab_one.dart';
import 'package:basic_app_layout_with_list_view/pages/tabs/tab_two.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List users = [
    User(name: 'Dan Walker'),
    User(name: 'Paul Walker'),
    User(name: 'Johnnie Walker')
  ];

  List drinks = [
    Drink(name: 'Coca Cola'),
    Drink(name: 'Red Bull'),
    Drink(name: 'Pineapple Juice')
  ];

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Tab(child: Text('Tab One')),
            Tab(child: Text('Tab Two'))
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: TabBarView(
        controller: tabController,
        children: [
          TabOne(users: users),
          TabTwo(drinks: drinks)
        ],
      ),
    );
  }
}
