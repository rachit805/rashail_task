import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:rasail_task/controller/otpController.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Image.asset(
                  "images/RSFP-logo.png",
                  width: 70,
                  height: 100,
                ),
                const Text(
                  "RSFP",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w800,
                      fontSize: 25),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    "Enter your 10-digit mobile number to receive the verification code."),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CountryPickerDropdown(
                        initialValue: 'In',
                        itemBuilder: (country) => Container(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.25,
                            child: Row(
                              children: [
                                // CountryPickerUtils.getDefaultFlagImage(country),
                                const SizedBox(width: 20),
                                Text("${country.name}"),
                                const SizedBox(width: 5),
                                Text("(+${country.phoneCode})"),
                              ],
                            ),
                          ),
                        ),
                        onValuePicked: (Country country) {},
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: mobileController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Your Mobile Number*"),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    "By creating an account you are agreeing to our Privacy Policy and Terms of Servvices"),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {
                      mobileOtpLogin(context, mobileController.text);
                    },
                    child: Container(
                      // alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(5),
                        // border: Border.all(color: Colors.black)
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          "Continue",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
