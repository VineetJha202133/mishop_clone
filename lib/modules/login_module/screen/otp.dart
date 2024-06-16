import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/common_widget/button.dart';
import 'package:mishop/modules/common_widget/ellipse_logo.dart';
import 'package:mishop/services/shared_preferences_services.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/enum/shared_prefs_keys_enum.dart';

class OtpScreen extends StatefulWidget {
  final String? phoneFromPage;
  const OtpScreen( {this.phoneFromPage,super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  TextEditingController otpController = TextEditingController();
  String? errorText;
  bool validateOTP(String value) {
    if (value.trim().length < 6) {
      setState(() {
        errorText = 'Incorrect OTP';
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
          
              const SizedBox(height: 60,),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Enter OTP receieved \nin messages', style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700, fontFamily: 'Roboto'),),
          
                    const SizedBox(height: 20,),
          
                    RichText(
                      text: TextSpan(
                        style: TextStyle( fontWeight: FontWeight.w400, fontFamily: 'Roboto'),
                        children: [
                          TextSpan(text: '6 digits code sent to ', style: TextStyle(color: inactiveText)),
                          TextSpan(text: '+91 ${widget.phoneFromPage}', style: TextStyle(color: greenColor)),
                        ]
                      ),
                    ),
          
                    const SizedBox(height: 20,),
          
                    GestureDetector(                  
                      onTap: () {},                  
                      child: Text('Resend OTP', style: TextStyle(color: greenColor, fontFamily: 'Roborto', fontWeight: FontWeight.w400),)
                      ),
                
                    const SizedBox(height: 20,),
                    
                
                    TextFormField(
                      onTap: () {
                        setState(() {
                          errorText = null;
                        });
                      },
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      maxLength: 6,
                      controller: otpController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: '       .       .       .       .       .       .',
                        hintStyle: TextStyle(fontSize: 16),
                        counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: lightGrey)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: lightGrey)
                        ),
                        errorText: errorText
                      ),
                    ),
                
                    const SizedBox(height: 30,),
                    
        
                    elevatedButton(title: 'Next', onPressed: ()async{
                      if(validateOTP(otpController.text.trim())){
                        await SharedPreferencesServices.setBoolData(
                          key: SharedPreferencesKeyEnum.isLoggedIn.value,
                          value: true
                        );
        
                        Navigator.pushAndRemoveUntil(context, 
                       MaterialPageRoute(builder: (context) => CustomBottomNavigationBar())
                      , (route) => false);
                      }
                      // Navigator.pushAndRemoveUntil(context,
                      //   MaterialPageRoute(builder: (context) => CustomBottomNavigationBar()));
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