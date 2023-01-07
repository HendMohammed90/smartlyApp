import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:smartly_app/constants.dart';
import 'package:smartly_app/data/models/product.dart';
import 'package:smartly_app/data/repo/products_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'product_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitialState());
  final ProductRepo productRepo;
  static ProductsCubit get(context) => BlocProvider.of(context);

  late List<Products> resultList = Constants.resultList;
  late Products? singleItem;
  //get All Data
  List<Products> getAllProducts() {
    productRepo.getAllCharacter().then((list) {
      emit(ProductsLoadedState((list)));
      resultList = list;
      // print(resultList);
    });
    emit(AllProductsSuccessState());
    return resultList;
  }

  //Get Single Data
  void getSingleProduct(id) {
    productRepo.getSingleItem(id).then((value) {
      print(value);
      // singleItem = value!;
      emit(SingleProductSuccessState(singleItem!));
    });
    // return singleItem!;
  }
}
