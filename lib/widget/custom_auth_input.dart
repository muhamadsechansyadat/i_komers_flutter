import 'package:flutter/material.dart';

class CustomAuthInput extends StatelessWidget {
  const CustomAuthInput({
    required this.label,
    required this.fontFamily,
    required this.fontSize,
    required this.keyboardType,
    this.isPassword = false,
    this.isPasswordVisible = false,
    this.onPasswordVisibilityToggle,
    this.textEditing,
    Key? key,
  }) : super(key: key);

  final String label;
  final String fontFamily;
  final double fontSize;
  final TextInputType keyboardType;
  final bool? isPassword;
  final bool? isPasswordVisible;
  final Function(bool)? onPasswordVisibilityToggle;
  final TextEditingController? textEditing;

  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            obscureText: isPassword == true && isPasswordVisible != true,
            decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: Color(0xFF9B9B9B),
                fontFamily: fontFamily,
              ),
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              suffixIcon: isPassword == true
                  ? IconButton(
                      icon: Icon(
                        isPasswordVisible == true
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        onPasswordVisibilityToggle
                            ?.call(!(isPasswordVisible ?? false));
                      },
                    )
                  : null,
            ),
            style: TextStyle(
              fontFamily: fontFamily,
              fontSize: fontSize,
            ),
            keyboardType: keyboardType,
            cursorColor: Colors.black,
            controller: textEditing,
          ),
        ],
      ),
    );
  }
}
