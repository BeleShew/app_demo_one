import 'package:Flutter/Models/Product.dart';
import 'package:get/state_manager.dart';

class GetxDemoClass extends GetxController {
  var products = List<Product>().obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    feachProducts();
  }

  void feachProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
          id: 1,
          price: 30,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDescription: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];

    products.assignAll(productResult);
  }
}
