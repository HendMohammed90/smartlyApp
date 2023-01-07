import 'package:flutter/material.dart';
import 'package:smartly_app/constants.dart';
import 'package:smartly_app/data/models/product.dart';

class ProductItem extends StatelessWidget {
  final Products products;

  const ProductItem({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: Constants.mainColor,
        ),
        borderRadius: BorderRadius.circular(10),

        ///Todo border with color
      ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black45,
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Text(
                '${products.title}',
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
              Text(
                '\$ ${products.price}',
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 17,
                  color: Constants.lightMainColor,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        child: products.image!.isNotEmpty
            ? FadeInImage.assetNetwork(
                // width: 200,
                // height: 200,
                placeholder: 'assets/images/image.png',
                image: products.image!,
                fit: BoxFit.contain,
              )
            : Image.asset('assets/images/image.png'),
      ),
    );
  }
}
