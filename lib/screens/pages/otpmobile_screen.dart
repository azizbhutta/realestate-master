import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestate/screens/constants/mycolors.dart';
import 'otp_screen.dart';

class OtpMobileScreen extends StatefulWidget {
  const OtpMobileScreen({Key? key}) : super(key: key);

  @override
  State<OtpMobileScreen> createState() => _OtpMobileScreenState();
}

class _OtpMobileScreenState extends State<OtpMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset(
                  "assets/images/locked.png",
                  height: 90,
                  width: 90,
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Container(
                child: const Text(
                  "OTP Verification",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      letterSpacing: 1.3,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                child: const Text(
                  "We will send you a one-time password \n               to this mobile number",
                  style: TextStyle(
                      color: Colors.black87, fontSize: 15, letterSpacing: 1.0),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: Text(
                  "Enter Mobile Number",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      letterSpacing: -0.8,
                      fontSize: 14),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: SizedBox(
                  height: 45.0,
                  child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide.none),
                        prefixText: "      ",
                        hintText: "+00 915 224 654",
                        hintStyle: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                      )),
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                },
                color: primaryColor,
                minWidth: 180,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Text(
                  "Get OTP",
                  style: TextStyle(color: whiteColor),
                ),
              )
            ],
          ),
        ));
  }
}
