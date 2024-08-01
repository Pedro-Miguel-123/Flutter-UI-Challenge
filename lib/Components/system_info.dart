import 'package:flutter/material.dart';

class SystemInfo extends StatelessWidget {
  const SystemInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Simon's BBQ Team",
                style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text(
                "Location ID# SIMON123",
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                      "Last Synced",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 8),
                        child: Container(
                          padding: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                          width: 10,
                          height: 10,
                        ),
                      ),
                      Text("3 mins ago")
                    ],
                  ),
                ],
              ),
              Container(
                width: 20,
              ),
              HelpButton()
            ],
          )
        ],
      ),
    );
  }
}

class HelpButton extends StatelessWidget {
  const HelpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Theme.of(context).hoverColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
        ),
        onPressed: () => { print("Pressed help button") },
        child: Row(
          children: [
            Icon(Icons.help_outline),
            Container(width: 3),
            Text("Help")
          ],
        )
    );
  }
}
