import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ikomers/auth/login.dart';

import '../widget/auth/login_social_account.dart';
import '../widget/custom_auth_input.dart';
import 'api/register_api.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUp> {
  bool isPasswordVisible = false;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
              onPressed: () {
                Get.off(
                  LoginPage(),
                  transition: Transition.leftToRight,
                  duration: Duration(
                    seconds: 1,
                  ),
                );
              },
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
                    'Sign Up',
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
                label: 'Username',
                keyboardType: TextInputType.text,
                textEditing: usernameController,
              ),
              SizedBox(
                height: 10,
              ),
              CustomAuthInput(
                fontFamily: 'Metropolis',
                fontSize: 18,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                textEditing: emailController,
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
                textEditing: passwordController,
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
                        'Already have an account ?',
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
                      RegisterAPI.register(
                        context,
                        usernameController.text,
                        emailController.text,
                        passwordController.text,
                      );
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
                        'Register',
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
              LoginSocialAccount(),
            ],
          ),
        ),
      ),
    );
  }
}
