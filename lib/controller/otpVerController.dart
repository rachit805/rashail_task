import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rasail_task/UI/homeScreen.dart';

Future<void> verifyOtp(
    BuildContext context, String phoneNumber, String otp) async {
  final baseUrl = 'https://rsfpsoftware.gowild.co.in';
  final endpoint = '/app/mobile-verify/';

  final url = Uri.parse('$baseUrl$endpoint');

  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  final Map<String, dynamic> requestBody = {
    'phone_number': phoneNumber,
    'otp': otp,
  };

  try {
    final response = await http.post(
      url,
      headers: headers,
      body: jsonEncode(requestBody),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      print('OTP Verification Successful: ${response.body}');
      // ignore: use_build_context_synchronously
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())));
    } else {
      // Handle error
      print(
          'OTP Verification Failed: ${response.statusCode}, ${response.body}');
    }
  } catch (e) {
    // Handle exceptions
    print('Exception during OTP Verification: $e');
  }
}

// Example Usage:
// void main() {
//   verifyOtp("9260960454", "123456");
// }
