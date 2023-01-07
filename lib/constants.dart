import 'package:flutter/material.dart';
import 'package:smartly_app/data/models/product.dart';

class Constants {
  static const api = 'https://fakestoreapi.com/';
  static const allProducts = 'products';
  static const productDetails = 'products/{id}';

  static const Color mainColor = Color(0xff7B2869);
  static const Color baseColor = Color(0xff9D3C72);
  static const Color fontColor = Color(0xffC85C8E);
  static const Color lightMainColor = Color(0xffFFBABA);

  static List<Products> resultList = [];
  static List<Products> cartProductList = [];
}
