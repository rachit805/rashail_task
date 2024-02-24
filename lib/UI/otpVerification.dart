import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OTPVerification extends StatelessWidget {
  const OTPVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                      "Verification",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    "Enter your 6 Digit verification code which is sent to your mobile number +91 860xxxxxxx."),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PinInputTextField(
                    pinLength: 6,
                    decoration: BoxLooseDecoration(
                      strokeColorBuilder:
                          PinListenColorBuilder(Colors.black, Colors.black12),
                      bgColorBuilder:
                          PinListenColorBuilder(Colors.white, Colors.black12),
                      radius: Radius.circular(5),
                      strokeWidth: 2,
                      textStyle: TextStyle(fontSize: 20, color: Colors.black),
                      obscureStyle: ObscureStyle(
                        isTextObscure: true,
                        obscureText: '•',
                      ),
                    ),
                    onChanged: (String value) {},
                    enabled: true,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Countdown(
                  seconds: 30,
                  build: (BuildContext ctx, double time) {
                    if (time > 0) {
                      return Text(
                          "Haven’t received OTP? Resend (${time.ceil()} Secs)");
                    } else {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          width: 120,
                          child: const Center(
                            child: Text(
                              "Resend OTP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  interval: const Duration(seconds: 1),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () {},
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
                          "Submit",
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
