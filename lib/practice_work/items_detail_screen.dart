
import 'package:e_commerce_app/practice_work/ecoomerce_controller_screen.dart';
import 'package:e_commerce_app/practice_work/single_Item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemsDetailsScreen extends StatelessWidget {
  ItemsDetailsScreen({Key? key}) : super(key: key);

  final Ecommerce_Screen _ecommerce_Screen = Get.put(Ecommerce_Screen());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_ecommerce_Screen.products["my_products"][0]["id"]}'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: _ecommerce_Screen.products["my_products"].length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _ecommerce_Screen.itemSelectionIndex.value = index;
                      Get.to(SingleItemScreen());
                      // _ecommerce_Screen.cart.add(_ecommerce_Screen.data_All[indexVal][index+1]);
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 160,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            "${_ecommerce_Screen.products["my_products"][index]["product_name"]}",
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Obx((){
            //   return Expanded(
            //     child: ListView.builder(
            //       itemCount:_ecommerce_Screen.cart.length,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Container(
            //             height: 60,
            //             width: 160,
            //             color: Colors.white,
            //             child: Center(
            //               child: Text(_ecommerce_Screen.cart[index].toString(), style: TextStyle(
            //                   color: Colors.black
            //               ),),
            //             ),
            //           ),
            //         );
            //       },
            //     ),
            //   );
            //
            // }),
          ],
        ),
      ),
    );
  }
}
