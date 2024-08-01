import 'package:flutter/material.dart';
import 'package:test_project/Models/MenuItem.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  final menuItemsList = MenuItem.menuList();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Table(
        children: List.generate(3, (rowIndex) {
          return TableRow(
            children: List.generate(3, (columnIndex) {
              final index = rowIndex * 3 + columnIndex;
              return TableCell(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0),
                  child: MenuItemCard(menuItemsList: menuItemsList, index: index)
                )
              );
            })
          );
        })
      ),
    );
  }
}

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({
    super.key,
    required this.menuItemsList,
    required this.index,
  });

  final List<MenuItem> menuItemsList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      elevation: 4,
      shadowColor: Colors.red,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                    menuItemsList[index].menuTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                      menuItemsList[index].weight,
                    style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 8.0) ,
                child: Text(
                    menuItemsList[index].price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFF07713)),
                )
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 10,top: 50, bottom: 15),
            child:
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                menuItemsList[index].image,
                width: 70,
                height: 70,
                fit: BoxFit.fill,
              ),
            )
          )
        ]
      ),
    );
  }
}
