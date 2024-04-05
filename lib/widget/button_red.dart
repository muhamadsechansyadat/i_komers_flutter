import 'package:flutter/material.dart';

class CustomButtonRed extends StatelessWidget {
  const CustomButtonRed({
    required this.label,
    required this.fontFamily,
    required this.fontSize,
    required this.percentage,
    required this.height,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  final String label;
  final String fontFamily;
  final double fontSize;
  final double percentage;
  final double height;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;

    return Container(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: onPressed,
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
              width: MediaQuery.of(context).size.width * percentage,
              height: height,
              alignment: Alignment.center,
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: fontFamily,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
