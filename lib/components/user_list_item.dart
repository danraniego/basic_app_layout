import 'package:basic_app_layout_with_list_view/models/user.dart';
import 'package:flutter/material.dart';
import '../animation/slide_left.dart';
import '../pages/page_two.dart';

class UserListItem extends StatelessWidget {

  final User item;
  final IconData icon;

  const UserListItem({
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
            context, SlideLeft(page: PageTwo(user: item)),
          );
        },
      ),
    );
  }
}
