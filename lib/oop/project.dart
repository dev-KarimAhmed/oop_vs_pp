// ignore_for_file: public_member_api_docs, sort_constructors_first

List<Product> _products = [];

class Product {
  String name;
  int quantity;
  bool isAvailable;
  Product({
    required this.name,
    required this.quantity,
    required this.isAvailable,
  });
}

class ShoppingCart {
  void addProduct(Product product) {
    _products.add(product);
  }

  void removeProduct(Product product) {
    if (_products.contains(product)) {
      _products
        .removeWhere((productObject) => productObject.name == product.name);
    }
  }

  int clacQuantities() {
    int quntities = 0;
    for (Product product in _products) {
      quntities += product.quantity;
    }
    return quntities;
  }

  void printProducts() {
    for (Product product in _products) {
      print(product.name);
    }
  }
}
