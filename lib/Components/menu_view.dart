import 'package:flutter/material.dart';
import 'package:test_project/Components/button_row.dart';
import 'package:test_project/Components/menu_items.dart';
import 'package:test_project/Components/personal_info.dart';
import 'package:test_project/Components/system_info.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SystemInfo(),
          ButtonRow(),
          MenuItems(),
          PersonalInfo()
        ],
      ),
    );
  }
}
