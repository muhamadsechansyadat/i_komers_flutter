import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikomers/product/detail.dart';
import 'package:ikomers/widget/product/product_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class ProductNew extends StatelessWidget {
  const ProductNew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<int> text = [1, 2, 3, 4];
    return InkWell(
      onTap: () {
        Get.to(
          ProductDetail(),
          transition: Transition.rightToLeft,
          duration: Duration(
            seconds: 1,
          ),
        );
      },
      child: Container(
        height: 300.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 16.0),
            for (var i in text)
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ProductImage(
                          'assets/new/image_1.jpg',
                        ),
                        Positioned(
                          top: 8.0,
                          left: 8.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black,
                            ),
                            child: Text(
                              'New',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8.0,
                          right: 8.0,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.grey,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Container(
                      width: 140.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 4.5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 13.0,
                                itemBuilder: (context, _) => Icon(
                                  CupertinoIcons.star_fill,
                                  color: Color(0xFFFFBA49),
                                ),
                                ignoreGestures: true,
                                onRatingUpdate: (double value) {},
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                '(10)',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'Product Name ' + i.toString(),
                            maxLines: 2,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Row(
                            children: [
                              Text(
                                '22\$',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22.0,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '19\$',
                                style: TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 22.0,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
