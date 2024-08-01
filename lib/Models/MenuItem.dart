class MenuItem {
  String menuTitle;
  String weight;
  String price;
  String image;

  MenuItem({required this.menuTitle, required this.weight, required this.price, required this.image});

  static List<MenuItem> menuList() {
    return [
      MenuItem(menuTitle: "Grilled Corn", weight: "150g", price: "\$1.75", image: "assets/grilled_corn.png"),
      MenuItem(menuTitle: "Ranch Burguers", weight: "150g", price: "\$7.75", image: "assets/ranch_burguer.png"),
      MenuItem(menuTitle: "Bacon pizza", weight: "150g", price: "\$7.00", image: "assets/bacon_pizza.png"),
      MenuItem(menuTitle: "Fettuccine pasta", weight: "150g", price: "\$7.75", image: "assets/fettuccine_pasta.png"),
      MenuItem(menuTitle: "Stuffed Flank Steak", weight: "150g", price: "\$13.50", image: "assets/stuffed_flank_steak.png"),
      MenuItem(menuTitle: "Tortillas", weight: "150g", price: "\$7.75", image: "assets/tortillas.png"),
      MenuItem(menuTitle: "Original Burguers", weight: "150g", price: "\$7.00", image: "assets/original_burguer.png"),
      MenuItem(menuTitle: "Pancakes", weight: "150g", price: "\$1.75", image: "assets/pancakes.png"),
      MenuItem(menuTitle: "Pepperoni pizza", weight: "150g", price: "\$13.50", image: "assets/pepperoni_pizza.png"),
    ];
  }
  
}