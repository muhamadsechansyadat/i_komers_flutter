import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ikomers/auth/forgot_password.dart';
import 'package:ikomers/auth/sign_up.dart';
import 'package:ikomers/main_page/main_first.dart';

import '../widget/auth/login_social_account.dart';
import '../widget/custom_auth_input.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(CupertinoIcons.back, color: Colors.black),
              onPressed: () {},
            );
          },
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Metropolis',
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              CustomAuthInput(
                fontFamily: 'Metropolis',
                fontSize: 18,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 10,
              ),
              CustomAuthInput(
                fontFamily: 'Metropolis',
                fontSize: 18,
                label: 'Password',
                keyboardType: TextInputType.text,
                isPassword: true,
                isPasswordVisible: isPasswordVisible,
                onPasswordVisibilityToggle: (bool isVisible) {
                  setState(() {
                    isPasswordVisible = isVisible;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.off(
                    SignUp(),
                    transition: Transition.rightToLeft,
                    duration: Duration(
                      seconds: 1,
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'New To i-Komers? Create an account ',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Icon(
                        CupertinoIcons.arrow_right,
                        size: 15.0,
                        color: Color(0xFFDB3022),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        MainFirst(),
                        transition: Transition.rightToLeft,
                        duration: Duration(
                          seconds: 1,
                        ),
                      );
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
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Metropolis',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.off(
                    ForgotPassword(),
                    transition: Transition.rightToLeft,
                    duration: Duration(
                      seconds: 1,
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password ?',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              LoginSocialAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
