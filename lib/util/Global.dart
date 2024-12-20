import '../models/Product.dart';

class Global {
  static List<Product> cardproduct = [];

  static AddToCard(products) {
    bool exit = false;
    if (cardproduct.isNotEmpty) {
      for (var element in cardproduct) {
        if (products.id == element.id) {
          element.count++;
          exit = true;
        }
      }
    }
    if(!exit){
      cardproduct.add(products);
    }
  }
}
