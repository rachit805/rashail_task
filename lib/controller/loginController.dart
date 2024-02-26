import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rasail_task/UI/otpVer_Screen.dart';

Future<void> mobileOtpLogin(BuildContext context, String phoneNumber) async {
  const baseUrl = 'https://rsfpsoftware.gowild.co.in';
  final endpoint = '/app/mobile-login/';

  final url = Uri.parse('$baseUrl$endpoint');

  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  final Map<String, dynamic> requestBody = {
    'phone_number': phoneNumber,
  };

  try {
    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      print('API Request Successful: ${response.body}');
      // ignore: use_build_context_synchronously
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OTPVerification(
                    phoneNumber: phoneNumber,
                  )));
    } else {
      print('API Request Failed: ${response.statusCode}, ${response.body}');
    }
  } catch (e) {
    print('Exception during API Request: $e');
  }
}
