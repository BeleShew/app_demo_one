import 'package:Flutter/Models/Product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);
  var testAmount = 0.0;

  addToCart(Product product) {
    cartItems.add(product);
    testAmount = totalPrice;
    update();
  }
}
