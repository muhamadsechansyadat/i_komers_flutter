import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:ikomers/widget/button_red.dart';
import 'package:ikomers/widget/product/product_sale.dart';

import '../widget/custom_botton_navigation_bar.dart';
import '../widget/custom_dropdown.dart';
import '../widget/product/product_new.dart';
import '../widget/product/show_image_detail_product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  bool isPasswordVisible = false;
  final List<String> items = [
    'assets/new/image_1.jpg',
    'assets/new/image_2.jpg',
    'assets/new/image_3.jpg',
    'assets/new/image_4.jpg',
    'assets/new/image_5.jpg',
    'assets/new/image_6.jpg',
    'assets/new/image_7.jpg',
    'assets/new/image_8.jpg',
    'assets/new/image_9.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = -1;
    double screenWidth = MediaQuery.of(context).size.width;
    List<bool> isSelected = [true, false, false, false, false];

    return Scaffold(
      appBar: null, // Set appbar menjadi null untuk menghilangkan appbar
      backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.60,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    autoPlay: false,
                  ),
                  items: items.map((String url) {
                    return GestureDetector(
                      onTap: () {
                        _showImageModal(context, url);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(url),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                Positioned(
                  top: 40.0,
                  left: 15.0,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      child: Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "BETA AR JACKET MEN'S",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          '(10 Reviewers)',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
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
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Available in stock',
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: 17.0,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Light, packable, highly versatile GORE-TEX PRO shell with hybrid construction. Beta Series: All round mountain apparel. | AR: All Round.",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.normal,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    '37',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            print('Login pressed');
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFFDB3022)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50.0,
            alignment: Alignment.center,
            child: Text(
              'ADD TO CART',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Metropolis',
                fontSize: 18.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showImageModal(BuildContext context, String imageUrl) {
    showImageModal(context, items, imageUrl);
  }
}
