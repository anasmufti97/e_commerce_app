import 'package:e_commerce_app/practice_work/cart_screen.dart';
import 'package:e_commerce_app/practice_work/items_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcommerceScreen extends StatelessWidget {
  const EcommerceScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Column(
      children: [

        SizedBox(
          height: 50,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount:5,
            itemBuilder: (context, index) {
              return InkWell(

                onTap: (){

                  Get.to(ItemsDetailsScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 160,
                    color: Colors.white,
                    child: Center(
                      child: Text("PRODUCTS", style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        InkWell(

          onTap: (){
            Get.to(() => CartScreen());
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.black
            ),
            child: Center(
              child: Text("YOUR CART", style: TextStyle(
                  fontSize: 25,
                  color: Colors.white
              ),),
            ),
          ),
        ),
      ],
    )));
  }
}
