import 'package:flutter/material.dart';

class CurrentOrderView extends StatelessWidget {
  const CurrentOrderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(color: Color(0xFFFDFDFB)),
      child: Column(
        children: [
          Row(
            children: [
              Text("Current Order",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36.0),
                child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Clear All",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFFBECEE)),
                        foregroundColor: WidgetStatePropertyAll(Color(0xFFF2859A)),
                        shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            )
                        )
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  iconSize: 35,
                  onPressed: () {},
                  icon: Icon(Icons.settings_outlined),
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFF4F5F6)),
                    shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        )
                    )
                  ) ,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
