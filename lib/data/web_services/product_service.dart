import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../../constants.dart';

class ProductsWebServices {
  late Dio dio;
  ProductsWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: Constants.api,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }
  //Get All Products
  Future<List<dynamic>?> fetchAllProducts() async {
    try {
      Response response = await dio.get(Constants.allProducts);
      return response.data;
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
      return null;
    }
  }

  //Get Single Product
  Future<dynamic> fetchSingleProduct(int productId) async {
    try {
      Response response = await dio.get('products/$productId');
      if (kDebugMode) {
        print(response.data.toString());
      }
      return response.data;
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
      return null;
    }
  }
}
// getAllCharacter
