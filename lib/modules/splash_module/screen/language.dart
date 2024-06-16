import 'package:flutter/material.dart';
import 'package:mishop/modules/common_widget/button.dart';
import 'package:mishop/modules/common_widget/ellipse_logo.dart';
import 'package:mishop/modules/login_module/screen/phone_number.dart';
import 'package:mishop/services/shared_preferences_services.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/enum/shared_prefs_keys_enum.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<String> language = ['English', 'Hindi', 'Chinese', 'German'];
  String selectedValue = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          logoWithEllipse(),

          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Choose a Language',
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Roboto'),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: lightGrey,
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        items: language.map((value) {
                          return DropdownMenuItem(
                              value: value, child: Text(value));
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                elevatedButton(title: 'Next', onPressed: ()async{
                  await SharedPreferencesServices.setStringData(key: SharedPreferencesKeyEnum.languageData.value, value: selectedValue);
                  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const PhoneNumber()));
                }),

                const SizedBox(height: 30,)
          
              ],
            ),
          )
        ],
      ),
    );
  }
}
