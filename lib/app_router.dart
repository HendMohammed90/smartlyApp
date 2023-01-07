import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartly_app/business_logic/cart_cubit/cart_cubit.dart';
import 'package:smartly_app/business_logic/product_cubit/product_cubit.dart';
import 'package:smartly_app/data/models/product.dart';
import 'package:smartly_app/data/repo/products_repo.dart';
import 'package:smartly_app/data/web_services/product_service.dart';
import 'package:smartly_app/presentation/screens/cart_page.dart';
import 'package:smartly_app/presentation/screens/checkout.dart';
import 'package:smartly_app/presentation/screens/homePage.dart';
import 'package:smartly_app/presentation/screens/productPage.dart';

class AppRouter {
  late ProductRepo productRepo;
  late ProductsCubit productCubit;

  AppRouter() {
    productRepo = ProductRepo(ProductsWebServices());
    productCubit = ProductsCubit(productRepo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => productCubit,
            child: const MyHomePage(),
          ),
        );
      case '/productDetails':
        final args = settings.arguments as Products;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => productCubit,
            child: ProductPage(product: args),
          ),
        );
      case '/cart':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CartCubit(productRepo),
            child: CartPage(),
          ),
        );
      case '/checkout':
        return MaterialPageRoute(
          builder: (_) => const Checkout(),
        );
    }
    return null;
  }
}
