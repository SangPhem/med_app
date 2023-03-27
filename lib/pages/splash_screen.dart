import 'package:flutter/material.dart';
import 'package:med_app/pages/register_page.dart';
import 'package:med_app/widget/button_primary.dart';
import 'package:med_app/widget/general_logo_space.dart';
import 'package:med_app/widget/widget_illustration.dart';
// import 'package:med_app/main_page.dart';
// import 'package:med_app/network/model/pref_profile_model.dart';
// import 'package:med_app/pages/login_page.dart';
// import 'package:med_app/widget/button_primary.dart';
// import 'package:med_app/widget/general_logo_space.dart';
// import 'package:med_app/widget/widget_ilustration.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter/cupertino.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralLogoSpace(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            WidgetIllustration(
              image: "assets/splash_ilustration.png",
              title: "Tìm kiếm phương thuốc\nchữa bệnh",
              subtitle1: "Mua thuốc và Đặt lịch hẹn với bác sỹ",
              subtitle2: "Bất kỳ đâu và bất kỳ lúc nào",
              child: ButtonPrimary(
                text: "Bắt Đầu",
                onTap: () {
                  //điều hướng
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => RegisterPages()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
