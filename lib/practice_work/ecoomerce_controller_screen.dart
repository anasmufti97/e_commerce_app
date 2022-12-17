import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Ecommerce_Screen extends GetxController {
  RxMap products = {
    "my_products": [
      {
        "id": 1,
        "quantity": 0,
        "product_name": "tShirts",
        "price": 2000,
        "color": [
          {
            "id": 11,
            "Color_code": 0xFF40eb34,
            "Color_name": "green",
          },
          {
            "id": 22,
            "Color_code": 0xFF344ceb,
            "Color_name": "blue",
          },
          {
            "id": 33,
            "Color_code": 0xFFeb344c,
            "Color_name": "red",
          },
          {
            "id": 44,
            "Color_code": 0xFFebc334,
            "Color_name": "yellow",
          },
          {
            "id": 55,
            "Color_code": 0xFF34ebe5,
            "Color_name": "sky blue",
          },
        ],
        "Shirtsize": [
          {"id": 1,
            "size": "Small"},
          {"id": 2,
            "size": "medium"},
          {"id": 3,
            "size": "large"},
        ]
      },
      {
        "id": 2,
        "quantity": 0,
        "product_name": "dress Shirt",
        "price": 2500,
        "color": [
          {
            "id": 11,
            "Color_code": 0xFF40eb34,
            "Color_name": "green",
          },
          {
            "id": 22,
            "Color_code": 0xFF344ceb,
            "Color_name": "blue",
          },
          {
            "id": 33,
            "Color_code": 0xFFeb344c,
            "Color_name": "red",
          },
          {
            "id": 44,
            "Color_code": 0xFFebc334,
            "Color_name": "yellow",
          },
          {
            "id": 55,
            "Color_code": 0xFF34ebe5,
            "Color_name": "sky blue",
          },
        ],
        "Shirtsize": [
          {"id": 1, "size": "Small"},
          {"id": 2, "size": "medium"},
          {"id": 3, "size": "large"},
        ]
      },
      {
        "id": 3,
        "quantity": 0,
        "product_name": "casual_shirt",
        "price": 1800,
        "color": [
          {
            "id": 11,
            "Color_code": 0xFF40eb34,
            "Color_name": "green",
          },
          {
            "id": 22,
            "Color_code": 0xFF344ceb,
            "Color_name": "blue",
          },
          {
            "id": 33,
            "Color_code": 0xFFeb344c,
            "Color_name": "red",
          },
          {
            "id": 44,
            "Color_code": 0xFFebc334,
            "Color_name": "yellow",
          },
          {
            "id": 55,
            "Color_code": 0xFF34ebe5,
            "Color_name": "sky blue",
          },
        ],
        "Shirtsize": [
          {"id": 1, "size": "Small"},
          {"id": 2, "size": "medium"},
          {"id": 3, "size": "large"},
        ]
      },
    ]
  }.obs;
  RxList<CartDataModel> dataStored = <CartDataModel>[].obs;
  RxInt selectedSize = 0.obs;
  RxInt selectedColor = 0.obs;
  RxInt itemSelectionIndex = 0.obs;
// RxList itemCount = [].obs;



}

class CartDataModel {
  String productName;
  int colorId;
  String colorName;
  String productSize;
  int sizeId;
  int productId;
  int quantity = 1;

  CartDataModel({

    required this.productName,
    required this.colorName,
    required this.colorId,
    required this.sizeId,
    required this.productSize,
    required this.productId,
    required this.quantity,

  });

// CartDataModel copyWith({
//   String? productName,
//   // required this.color_name,
//   // required this.product_size,
//   int? productId,
//   int? quantity,
// }) => CartDataModel(
//   productName : productName ?? this.productName,
//   // required this.color_name,
//   // required this.product_size,
//   productId : productId ?? this.productId,
//   quantity.value: quantity ?? this.quantity,
// );
}
