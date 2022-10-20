import 'package:basic_app_layout_with_list_view/pages/page_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Basic App Layout w/ List',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const PageOne(),
  ));
}

