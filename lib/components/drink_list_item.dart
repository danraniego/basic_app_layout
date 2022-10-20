import 'package:basic_app_layout_with_list_view/models/drink.dart';
import 'package:basic_app_layout_with_list_view/pages/page_three.dart';
import 'package:flutter/material.dart';
import '../animation/slide_left.dart';

class DrinkListItem extends StatelessWidget {

  final Drink item;
  final IconData icon;

  const DrinkListItem({
    required this.item,
    required this.icon,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(icon),
        title: Text(item.name ?? 'No Name'),
        onTap: () {
          Navigator.push(
            context, SlideLeft(page: PageThree(drink: item)),
          );
        },
      ),
    );
  }
}
