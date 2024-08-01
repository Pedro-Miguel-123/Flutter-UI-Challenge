import 'package:flutter/material.dart';
import 'package:test_project/Components/gradient_button.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          WristBandInformation()
        ],
      ),
    );
  }
}

class WristBandInformation extends StatelessWidget {
  const WristBandInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kInnerDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(10)
    );

    final kGradientBoxDecoration = BoxDecoration(
      gradient: LinearGradient(colors: [Color(0xFFE4A816), Color(0xFFD238A0)]),
      border: Border.all(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(10)
    );
    return Card(
      color: Colors.white,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                    "WRISTBAND INFORMATION",
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
                ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/avatar.png",
                        width: 40,
                        height: 40,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Column(
                      children: [
                        Text(
                            "Joaum Orliveira",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [Color(0xFFE4A816), Color(0xFFD238A0)]),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                            child: Text(
                                "VIP TICKET HOLDER",
                              style: TextStyle(fontSize: 6, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, bottom: 8.0),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Color(0xFFED5575)),
                        foregroundColor: WidgetStatePropertyAll(Colors.white),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          )
                        )
                      ) ,
                      onPressed: () {},
                      child: Text(
                          "Unlink",
                        style: TextStyle(fontSize: 10),
                      )
                    ),
                  ),

                  VerticalDivider(
                      thickness: 10,
                      color: Colors.black,
                    ),
                ],
              )
            ],)
          ),
          Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("SELECT AVAILABLE PROMO TO APPLY",
                style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: GradientButton(
                    onPressed: () {},
                    thickness: 2,
                    gradient: LinearGradient(colors: [Color(0xFFE4A816), Color(0xFFD238A0)]),
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        foregroundColor: WidgetStatePropertyAll(Colors.black),
                        shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Text(
                          "\$5 Off Any Item",
                        style: TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                ),
              )
            ])
          )
        ]
      ),
    );
  }
}