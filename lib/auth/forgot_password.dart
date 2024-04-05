import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ikomers/auth/login.dart';
import 'package:ikomers/auth/sign_up.dart';

import '../widget/auth/login_social_account.dart';
import '../widget/custom_auth_input.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Metropolis',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: TextStyle(
                  fontFamily: 'Metropolis',
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomAuthInput(
                fontFamily: 'Metropolis',
                fontSize: 18,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.off(
                    LoginPage(),
                    transition: Transition.leftToRight,
                    duration: Duration(
                      seconds: 1,
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        CupertinoIcons.arrow_left,
                        size: 15.0,
                        color: Color(0xFFDB3022),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Back to login page',
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
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(
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
                        'Send',
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
            ],
          ),
        ),
      ),
    );
  }
}
