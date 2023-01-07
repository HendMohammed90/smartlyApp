import 'package:flutter/foundation.dart';
import 'package:smartly_app/data/models/product.dart';
import 'package:smartly_app/data/web_services/product_service.dart';

class ProductRepo {
  final ProductsWebServices productsWebServices;

  ProductRepo(this.productsWebServices);

  //List OF Products
  Future<List<Products>> getAllCharacter() async {
    try {
      final products = await productsWebServices.fetchAllProducts();
      return products!
          .map((character) => Products.fromJson(character))
          .toList();
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return [];
    }
  }

  //Single Product
  Future<dynamic> getSingleItem(int productId) async {
    try {
      final product = await productsWebServices.fetchSingleProduct(productId);
      return product;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
      return null;
    }
  }
}
