// ignore_for_file: public_member_api_docs, sort_constructors_first
// Object Oriented Programming
//   class => object
// 1- what is Object Oriented Programming
// 2- Example
// 3- advantages and disadvantages
// 4- languages dart , java , python
// 5- project (Same Projec in PP)

import 'project.dart';

void main() {
  // Calculator calculator = Calculator(number1: 3, number2: 4, number3: 5);
  // print(calculator.add());
  // print(calculator.subtract());
  // print(calculator.multiply());

  Product product1 =
      Product(name: "Product 1", quantity: 10, isAvailable: true);
  Product product2 =
      Product(name: "Product 2", quantity: 2, isAvailable: false);

  ShoppingCart cart = ShoppingCart();
  cart.addProduct(product1);
  cart.addProduct(product2);
  cart.printProducts();
}

class Calculator {
  double number1;
  double number2;
  double number3;
  Calculator({
    this.number1 = 0,
    this.number2 = 0,
    this.number3 = 0,
  });

  double add() {
    return number1 + number2 + number3;
  }

  double subtract() {
    return number1 - number2 - number3;
  }

  double multiply() {
    return number1 * number2 * number3;
  }
}
