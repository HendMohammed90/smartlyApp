import 'package:flutter/material.dart';
import 'package:smartly_app/constants.dart';
import 'package:smartly_app/data/models/product.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  final List<Products> cartData = [
    Products(
      id: 1,
      title: 'product 1',
      price: 100,
      description: 'This is description for first product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 2,
      title: 'product 2',
      price: 200,
      description: 'This is description for 2 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 3,
      title: 'product 3',
      price: 300,
      description: 'This is description for 3 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 4,
      title: 'product 4',
      price: 400,
      description: 'This is description for 4 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 5,
      title: 'product 5',
      price: 500,
      description: 'This is description for 5 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 6,
      title: 'product 6',
      price: 600,
      description: 'This is description for 6 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 7,
      title: 'product 7',
      price: 700,
      description: 'This is description for 7 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 8,
      title: 'product 8',
      price: 800,
      description: 'This is description for 8 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
    Products(
      id: 9,
      title: 'product 9',
      price: 900,
      description: 'This is description for 9 product',
      category: 'Clothes',
      image: 'assets/images/placeholder.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Cart Details',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    SizedBox(
                      width: 140,
                      child: Image.asset(
                        cartData[index].image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomPaint(
                            child: Text(
                              '${cartData[index].title}',
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomPaint(
                            child: Text(
                              '\$${cartData[index].price}',
                              style: const TextStyle(
                                color: Constants.mainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: cartData.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 15,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Column(
                  children: const [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\$ 2000',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/checkout');
                  },
                  child: const Text(
                    'CHECKOUT',
                    style: TextStyle(
                      color: Constants.mainColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
