import 'package:flutter/material.dart';

class ButtonRow extends StatefulWidget {
  @override
  _ButtonRowState createState() => _ButtonRowState();
}

class _ButtonRowState extends State<ButtonRow> {

  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7, child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Button 1
            ToggleButtons(
              isSelected: [_selectedIndex == 0],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = _selectedIndex == 0 ? -1 : 0; // Correct logic
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("All items"),
                ),
              ],
              selectedColor: Colors.white,
              fillColor: Color(0xFFF07613),
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            // Button 2
            ToggleButtons(
              isSelected: [_selectedIndex == 1],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = _selectedIndex == 1 ? -1 : 1; // Correct logic
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("Food"),
                ),
              ],
              selectedColor: Colors.white,
              fillColor: Color(0xFFF07613),
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            // Button 3
            ToggleButtons(
              isSelected: [_selectedIndex == 2],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = _selectedIndex == 2 ? -1 : 2; // Correct logic
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("Alcohol"),
                ),
              ],
              selectedColor: Colors.white,
              fillColor: Color(0xFFF07613),
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            // Button 4
            ToggleButtons(
              isSelected: [_selectedIndex == 3],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = _selectedIndex == 3 ? -1 : 3; // Correct logic
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("Cold drinks"),
                ),
              ],
              selectedColor: Colors.white,
              fillColor: Color(0xFFF07613),
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
            // Button 5
            ToggleButtons(
              isSelected: [_selectedIndex == 4],
              onPressed: (index) {
                setState(() {
                  _selectedIndex = _selectedIndex == 4 ? -1 : 4; // Correct logic
                });
              },
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text("Hot drinks"),
                ),
              ],
              selectedColor: Colors.white,
              fillColor: Color(0xFFF07613),
              borderColor: Colors.transparent,
              borderRadius: BorderRadius.circular(40),
            ),
          ],
        ),
        ),
        Expanded(
          flex: 3,
          child: Container(),
        ),
      ],
    );
  }
}
