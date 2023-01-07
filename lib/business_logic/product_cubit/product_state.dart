part of 'product_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitialState extends ProductsState {}

class ProductsLoadedState extends ProductsState {
  final List<Products> productList;

  ProductsLoadedState(this.productList);
}

class AllProductsSuccessState extends ProductsState {}

class SingleProductSuccessState extends ProductsState {
  final Products product;
  SingleProductSuccessState(this.product);
}
