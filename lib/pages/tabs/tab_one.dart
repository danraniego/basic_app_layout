import 'package:basic_app_layout_with_list_view/components/user_list_item.dart';
import 'package:flutter/material.dart';

class TabOne extends StatelessWidget {

  final List users;

  const TabOne({
    required this.users,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...users.map((user) => UserListItem(
            item: user,
            icon: Icons.account_circle_rounded,
        )).toList()
      ],
    );
  }
}
