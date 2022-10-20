import 'package:basic_app_layout_with_list_view/models/drink.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {

  final Drink drink;

  const PageThree({
    required this.drink,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Center(
        child: Text(drink.name ?? 'No name'),
      ),
    );
  }
}
