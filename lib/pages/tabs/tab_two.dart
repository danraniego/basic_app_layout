import 'package:basic_app_layout_with_list_view/components/drink_list_item.dart';
import 'package:flutter/material.dart';

class TabTwo extends StatelessWidget {
  final List drinks;

  const TabTwo({
    required this.drinks,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...drinks.map((user) => DrinkListItem(
          item: user,
          icon: Icons.ad_units,
        )).toList()
      ],
    );
  }
}
