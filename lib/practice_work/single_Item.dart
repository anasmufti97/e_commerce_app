
import 'package:e_commerce_app/practice_work/ecoomerce_controller_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cart_screen.dart';

class SingleItemScreen extends StatelessWidget {
  SingleItemScreen({Key? key}) : super(key: key);

  final Ecommerce_Screen _ecommerce_Screen = Get.put(Ecommerce_Screen());
  bool yes = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    _ecommerce_Screen.products["my_products"]
                    [_ecommerce_Screen.itemSelectionIndex.value]
                    ["product_name"]
                        .toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                    child: Container(
                        color: Colors.grey,
                        height: Get.height,
                        width: Get.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: Get.height * 0.1,
                              width: Get.width,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: _ecommerce_Screen
                                    .products["my_products"][_ecommerce_Screen
                                    .itemSelectionIndex.value]["color"]
                                    .length,
                                itemBuilder: (context, index) {
                                  return Obx(() {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          _ecommerce_Screen.selectedColor
                                              .value =
                                              index;
                                          print(index);
                                        },
                                        child: Container(
                                          height: 30,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              color: Color(_ecommerce_Screen
                                                  .products["my_products"]
                                              [_ecommerce_Screen
                                                  .itemSelectionIndex.value]
                                              ["color"][index]
                                              ["Color_code"]),
                                              border: Border.all(
                                                  width: 3,
                                                  color: _ecommerce_Screen
                                                      .selectedColor ==
                                                      index
                                                      ? Colors.black
                                                      : Colors.transparent)),
                                        ),
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            SizedBox(
                              height: Get.height * 0.1,
                              width: Get.width,
                              child: ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: _ecommerce_Screen
                                    .products["my_products"][0]["Shirtsize"]
                                    .length,
                                itemBuilder: (context, index) {
                                  return Obx(() {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          _ecommerce_Screen
                                              .selectedSize.value = index;
                                        },
                                        child: Container(
                                          height: 10,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: 2,
                                                  color: _ecommerce_Screen
                                                      .selectedSize ==
                                                      index
                                                      ? Colors.blue
                                                      : Colors.transparent)),
                                          child: Center(
                                              child: Text(
                                                _ecommerce_Screen
                                                    .products["my_products"]
                                                [index]["Shirtsize"][index]
                                                ["size"],
                                                style: const TextStyle(
                                                    color: Colors.black),
                                              )),
                                        ),
                                      ),
                                    );
                                  });
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 100,
                            ),
                            InkWell(
                              onTap: () {
                                if (_ecommerce_Screen.dataStored.isEmpty) {
                                  onEmpty();
                                } else {
                                  yes = true;

                                  onNotEmpty();
                                }
                                yes ? onConditionTrue() : null;
                                Get.to(CartScreen());
                              },
                              child: Container(
                                height: 60,
                                decoration:
                                const BoxDecoration(color: Colors.black),
                                child: const Center(
                                  child: Text(
                                    "DONE",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.red),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ))),
              ],
            )));
  }

  onEmpty() {
    print("empty");
    yes = false;
    _ecommerce_Screen.dataStored.add(CartDataModel(
      productId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["id"],
      productName: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["product_name"],
      quantity: 1,

      productSize: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["Shirtsize"]
      [_ecommerce_Screen.selectedSize.value]["size"],

      sizeId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.selectedSize.value]["Shirtsize"]
      [_ecommerce_Screen.selectedSize.value]["id"],

      colorId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["color"]
      [_ecommerce_Screen.selectedColor.value]["id"],

      colorName: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["color"]
      [_ecommerce_Screen.selectedColor.value]["Color_name"],






    ));
  }

  onNotEmpty() {
    for (int i = 0; i < _ecommerce_Screen.dataStored.length; i++) {
      idCheck(i);
    }
  }

  colorCheck(int i) {
      if (_ecommerce_Screen.dataStored.value[i].colorId ==
          _ecommerce_Screen.products["my_products"]
          [_ecommerce_Screen.itemSelectionIndex.value]["color"]
          [_ecommerce_Screen.selectedColor.value]["id"]) {

        sizeChecK(i);

      }






  }

  idCheck(int i) {
    if (_ecommerce_Screen.dataStored[i].productId ==
        _ecommerce_Screen.products["my_products"]
        [_ecommerce_Screen.itemSelectionIndex.value]["id"]) {
      colorCheck(i);
    }
  }

sizeChecK(int i){

  if(_ecommerce_Screen.dataStored.value[i].sizeId ==
      _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["Shirtsize"]
      [_ecommerce_Screen.selectedSize.value]["id"]){




    _ecommerce_Screen.dataStored[i].quantity++;
    print(i);
    yes = false;
    print("yess it is");

  }else {
    print("nooooo it is not");
  }


}

  onConditionTrue() {
    _ecommerce_Screen.dataStored.add(CartDataModel(
      productId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["id"],

      productName: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["product_name"],

      quantity: 1,


      sizeId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.selectedSize.value]["Shirtsize"]
      [_ecommerce_Screen.selectedSize.value]["id"],

      productSize: _ecommerce_Screen.products["my_products"]
    [_ecommerce_Screen.selectedSize.value]["Shirtsize"]
    [_ecommerce_Screen.selectedSize.value]["size"],

      colorId: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["color"]
      [_ecommerce_Screen.selectedColor.value]["id"],

      colorName: _ecommerce_Screen.products["my_products"]
      [_ecommerce_Screen.itemSelectionIndex.value]["color"]
      [_ecommerce_Screen.selectedColor.value]["Color_name"],


    ));
  }
}
