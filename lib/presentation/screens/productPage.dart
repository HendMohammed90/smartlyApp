import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smartly_app/business_logic/product_cubit/product_cubit.dart';
import 'package:smartly_app/constants.dart';
import 'package:smartly_app/data/models/product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key, required this.product}) : super(key: key);
  final Products product;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Product Details',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add_shopping_cart,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                elevation: 10,
                shadowColor: Constants.lightMainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // margin: EdgeInsets.all(20),
                child: Container(
                  child: product.image!.isNotEmpty
                      ? FadeInImage.assetNetwork(
                          width: 400,
                          height: 300,
                          placeholder: 'assets/images/image.png',
                          image: product.image!,
                          fit: BoxFit.contain,
                        )
                      : Image.asset(
                          'assets/images/image.png',
                          width: 400,
                          height: 300,
                        ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text(
                              '${product.title}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                                color: Constants.fontColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${product.description}',
                              // overflow: TextOverflow.ellipsis,
                              // maxLines: 5,
                              style: const TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Roboto',
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Constants.lightMainColor),
                          ),
                          onPressed: () {},
                          child: Text(
                            '\$${product.price}',
                            style: const TextStyle(
                              fontSize: 20.0,
                              color: Constants.fontColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Rating: ${product.rating!.rate}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Constants.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Constants.lightMainColor)),
                      onPressed: () {},
                      child: Text(
                        '${product.category}',
                        style: const TextStyle(
                          fontSize: 20.0,
                          color: Constants.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Constants.mainColor,
                child: Text(
                  'Add To Cart'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
