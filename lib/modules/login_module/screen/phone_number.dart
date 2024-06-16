import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mishop/modules/common_widget/button.dart';
import 'package:mishop/modules/common_widget/ellipse_logo.dart';
import 'package:mishop/modules/login_module/screen/otp.dart';
import 'package:mishop/services/shared_preferences_services.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/enum/shared_prefs_keys_enum.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  String? errorText;

  TextEditingController phoneController = TextEditingController();
  bool validatePhoneNumber(String value) {
    if (value.trim().length < 10) {
      setState(() {
        errorText = 'Please enter a valid 10-digit phone number.';
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              logoWithEllipse(),
              const SizedBox(
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto'),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      onTap: (){
                        setState(() {
                          errorText = null;
                        });
                      },
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      controller: phoneController,
                      onFieldSubmitted: (value) {},
                      // textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          isDense: true,
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(
                                left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
                            child: Text('+91'),
                          ),
                          hintText: '    .   .   .   .   .   .   .   .   .   .',
                          hintStyle: const TextStyle(fontSize: 16),
                          counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: lightGrey),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: lightGrey)),
                          errorText: errorText,
                          ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    elevatedButton(
                        title: 'Next',
                        onPressed: () async {
                          if (validatePhoneNumber(phoneController.text.trim())) {
                            await SharedPreferencesServices.setStringData(
                                key: SharedPreferencesKeyEnum.phoneNumber.value,
                                value: phoneController.text.trim().toString());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen(
                                        phoneFromPage:
                                            phoneController.text.toString())));
                          }
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
