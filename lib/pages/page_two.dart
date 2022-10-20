import 'package:basic_app_layout_with_list_view/models/user.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {

  final User user;

  const PageTwo({
    required this.user,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Text(user.name ?? 'No name'),
      ),
    );
  }
}
