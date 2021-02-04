import 'package:Flutter/Controller/CartController.dart';
import 'package:Flutter/Controller/GetXDemoController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _AboutPageState();
  }
}

class _AboutPageState extends State<AboutPage> {
  final productList = Get.put(GetxDemoClass());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetX<GetxDemoClass>(
                builder: (controler) {
                  return ListView.builder(
                    itemCount: controler.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.all(12),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${controler.products[index].productName}',
                                        style: TextStyle(fontSize: 24),
                                      ),
                                      Text(
                                          '${controler.products[index].productDescription}'),
                                    ],
                                  ),
                                  Text('\$${controler.products[index].price}',
                                      style: TextStyle(fontSize: 24)),
                                ],
                              ),
                              RaisedButton(
                                onPressed: () {
                                  cartController
                                      .addToCart(controler.products[index]);
                                },
                                color: Colors.blue,
                                textColor: Colors.white,
                                child: Text('Add to Cart'),
                              ),
                              Obx(
                                () => IconButton(
                                  icon: controler
                                          .products[index].isFavorite.value
                                      ? Icon(Icons.check_box_rounded)
                                      : Icon(Icons
                                          .check_box_outline_blank_outlined),
                                  onPressed: () {
                                    controler.products[index].isFavorite
                                        .toggle();
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            // GetBuilder<CartController>(
            //   builder: (controller) {
            //     return Text(
            //       'Total amount: \$ ${controller.testAmount}',
            //       style: TextStyle(fontSize: 32, color: Colors.black),
            //     );
            //   },
            // ),
            Obx(() {
              return Text(
                'Total amount: \$ ${cartController.totalPrice}',
                style: TextStyle(fontSize: 32, color: Colors.black),
              );
            }),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
