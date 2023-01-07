part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitialState extends CartState {}

class CartLoadedState extends CartState {
  final List<Products> cartProducts;

  CartLoadedState(this.cartProducts);
}

class CartSuccessState extends CartState {}

class CartErrorState extends CartState {
  final String error;
  CartErrorState(this.error);
}
