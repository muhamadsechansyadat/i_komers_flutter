import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RegisterAPI {
  static Future<void> register(BuildContext context, String username,
      String email, String password) async {
    String baseUrl = dotenv.env['BASE_URL'] ?? '';
    final response = await http.post(
      Uri.parse(baseUrl + 'v1/auth/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'email': email,
        'password': password,
      }),
    );
    print(baseUrl + '/v1/auth/register');

    if (response.statusCode == 200) {
      print('berhasil');
      // Jika registrasi berhasil, tampilkan pesan berhasil
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registrasi Berhasil'),
            content:
                Text('Registrasi berhasil. Silakan login untuk melanjutkan.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Jika registrasi gagal, tampilkan pesan kesalahan
      print('gagal');
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Registrasi Gagal'),
            content: Text('Registrasi gagal. Silakan coba lagi.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
