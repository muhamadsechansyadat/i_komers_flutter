import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imageUrl;

  ProductImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
