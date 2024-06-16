import 'package:flutter/material.dart';
import 'package:mishop/modules/base_module/screen/bottom_navigation_bar.dart';
import 'package:mishop/modules/common_widget/back_button.dart';
import 'package:mishop/modules/login_module/screen/phone_number.dart';
import 'package:mishop/modules/profile_module/widgets/list_tile.dart';
import 'package:mishop/services/shared_preferences_services.dart';
import 'package:mishop/utils/appColor.dart';
import 'package:mishop/utils/enum/shared_prefs_keys_enum.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  String phoneNumberData = '';
  String languageData = '';
  @override
  void initState() {
    getPhoneNumberData();
    getLanguageData();
    // TODO: implement initState
    super.initState();
  }

  getPhoneNumberData() async {
    phoneNumberData = await SharedPreferencesServices.getStringData(
            key: SharedPreferencesKeyEnum.phoneNumber.value) ??
        '9878564729';
    setState(() {});
  }

  getLanguageData() async {
    languageData = await SharedPreferencesServices.getStringData(
            key: SharedPreferencesKeyEnum.languageData.value) ??
        'English';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    // final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            backButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomBottomNavigationBar(),
                    ));
              },
            ),
            SizedBox(
              width: mediaQueryWidth * 0.04,
            ),
            Text('My Account'),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Information',
              style: TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.w600, color: darkBlue),
            ),
            SizedBox(height: 10.0),
            listTile(Icons.person, 'Username: Vineet'),
            listTile(Icons.email, 'Email: vineet@gmail.com'),
            listTile(Icons.phone, 'Phone: +91 $phoneNumberData'),
            Divider(),
            Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20.0, fontWeight: FontWeight.w600, color: darkBlue),
            ),
            SizedBox(height: 10.0),
            listTile(Icons.notifications, 'Notifications'),
            listTile(Icons.security, 'Security'),
            listTile(Icons.language, 'Language', trailingText: languageData),
            const Divider(),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await SharedPreferencesServices.clearSharedPrefData();
                  // ignore: use_build_context_synchronously
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhoneNumber(),
                    ),
                    (route) => false,
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(greenColor)),
                child: Text(
                  'Logout',
                  style: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
