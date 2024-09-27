// Shopping Cart in PP
// 1- add Products
// 2- remove products
// 3- calc quantity

//  No Objects

List<Map<String, dynamic>> products = [];

void addProduct(Map<String, dynamic> product) {
  products.add(product);
}

void removeProduct(Map<String, dynamic> product) {
  products.removeWhere((productMap) => productMap['name'] == product['name']);
}

double calcTotalQuantity() {
  double totalQuantity = 0;
  for (Map<String, dynamic> product in products) {
    totalQuantity += product['quantity'];
  }
  return totalQuantity;
}

void main() {
  Map<String, dynamic> product1 = {'name': 'Product 1', 'quantity': 10};
  Map<String, dynamic> product2 = {
    'name': 'Product 2',
    'quantity': 2,
    "type": "Electronics",
    "color": "red",
    "isAvailable": true
  };

  addProduct(product1);
  addProduct(product2);

  print("This is The list of Products $products");
  
  print("This is The total quantity ${calcTotalQuantity()}");

  removeProduct(product1);
  print("This is The list of Products After Removing $products");
}
