import 'package:flutter/material.dart';
import 'package:test_project/Components/current_order_view.dart';
import 'package:test_project/Components/menu_view.dart';

class SplitView extends StatelessWidget {
  const SplitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 7, // Takes 70% of the screen width
              child: MenuView()
            ),
            Expanded(
              flex: 3, // Takes 30% of the screen width
              child: CurrentOrderView()
            ),
          ],
        ),
      ),
    );
  }
}
