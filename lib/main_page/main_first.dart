import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:ikomers/widget/button_red.dart';
import 'package:ikomers/widget/product/product_sale.dart';

import '../widget/custom_botton_navigation_bar.dart';
import '../widget/product/product_new.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MainFirst extends StatefulWidget {
  @override
  _MainFirstState createState() => _MainFirstState();
}

class _MainFirstState extends State<MainFirst> {
  bool isPasswordVisible = false;
  int _currentIndex = 0;
  List<Widget> _icons = const [
    Icon(CupertinoIcons.home),
    Icon(CupertinoIcons.cart),
    Icon(CupertinoIcons.bag),
    Icon(Icons.favorite),
    Icon(CupertinoIcons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null, // Set appbar menjadi null untuk menghilangkan appbar
      backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.72,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/736x/3d/55/bd/3d55bdefd4679c5bb13b3e35981021d6.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Fashion Sale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis',
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: CustomButtonRed(
                          fontFamily: 'Metropolis',
                          label: 'Check',
                          fontSize: 16.0,
                          height: 35.0,
                          percentage: 0.25,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'New',
                          style: TextStyle(
                            color: Colors.black, // Adjust the color as needed
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.black, // Adjust the color as needed
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Metropolis',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "You've never seen it before",
                        style: TextStyle(
                          color: Colors.black54, // Adjust the color as needed
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Metropolis',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ProductNew(),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Sale',
                          style: TextStyle(
                            color: Colors.black, // Adjust the color as needed
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Metropolis',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: Colors.black, // Adjust the color as needed
                              fontSize: 14.0,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Metropolis',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Summer sale series",
                        style: TextStyle(
                          color: Colors.black54, // Adjust the color as needed
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Metropolis',
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ProductSale(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
