import 'package:smartly_app/data/models/product.dart';
import 'package:smartly_app/data/repo/products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit(this.productRepo) : super(CartInitialState());
  final ProductRepo productRepo;
  static CartCubit get(context) => BlocProvider.of(context);

  List<Products> cartProductList = [];
}
