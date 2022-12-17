import 'package:e_commerce_app/practice_work/ecoomerce_controller_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final Ecommerce_Screen _ecommerce_Screen = Get.put(Ecommerce_Screen());

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF40eb34),
        ),
        body: ListView.builder(
          itemCount: _ecommerce_Screen.dataStored.length,
          itemBuilder: (context, index) {
            int a= index;
            return Obx((){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 2,
                      )),
                  child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                _ecommerce_Screen.dataStored.value[index].productName,
                                style: const TextStyle(color: Colors.red,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${_ecommerce_Screen.dataStored.value[index].colorName}",
                                style:TextStyle(color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                              ),
                            ],
                          ),
                          // Text(
                          //   "${_ecommerce_Screen.dataStored.value[index].productId}",
                          //   style: const TextStyle(color: Colors.black),
                          // ),




                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: <Widget>[
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      if (_ecommerce_Screen
                                          .dataStored[index].quantity >
                                          0) {
                                        _ecommerce_Screen.dataStored[index].quantity--;
                                        _ecommerce_Screen.dataStored.refresh();
                                      }
                                    },
                                  ),
                                  Text(

                                    '${_ecommerce_Screen.dataStored[index].quantity.toString()}',
                                    style: const TextStyle(color: Colors.blue),

                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      _ecommerce_Screen.dataStored[index].quantity++;
                                      _ecommerce_Screen.dataStored.refresh();
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                "${_ecommerce_Screen.dataStored.value[index].productSize}",
                                style: const TextStyle(color: Colors.black,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              );
            });
          },
        )
      ),
    );
  }
}
