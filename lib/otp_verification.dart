import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _AddOtpState();
}

class _AddOtpState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              'Enter Verification Code',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'We have send a code to number',
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '+91xxx',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'xxxx',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '8586',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            PinCodeTextField(
              appContext: context,
              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 4,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                  activeColor: Colors.black,
                  inactiveColor: Colors.grey.shade300,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 80,
                  activeFillColor: Colors.white,
                  errorBorderColor: Colors.grey,
                  selectedColor: Colors.grey.shade300,
                  disabledColor: Colors.grey),
              cursorColor: Colors.grey,
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: false,
              keyboardType: TextInputType.number,
              boxShadows: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8)),
              width: double.infinity,
              height: 50,
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didnot receive the code',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Resend the OTP',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
