import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  //頁頭標題
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetFontSize(60)),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  //頁頭說明
  Widget _buildPageHeadDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        'The best of news channels all in one place. Trusted sources and personlized news for you.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.2,
        ),
      ),
    );
  }

  //特性說明
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetHeight(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
              ),
            ),
          )
        ],
      ),
    );
  }

  //開始按鈕
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      color: AppColors.primaryElement,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: Radii.k6pxRadius,
            ),
          ),
          foregroundColor:
              MaterialStateProperty.all<Color>(AppColors.primaryElementText),
        ),
        child: Text("Get Started"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //設定縮放比例
    ScreenUtil.init(
      context,
      designSize: Size(375, 812 - 44 - 34),
      minTextAdapt: true,
    );

    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            _buildPageHeadTitle(),
            _buildPageHeadDetail(),
            _buildFeatureItem(
                "feature-1",
                "Compelling photography and typography provide a beautiful reading",
                86),
            _buildFeatureItem(
                "feature-2",
                "Sector news never shares your personal data with advertisers or publishers",
                40),
            _buildFeatureItem("feature-1",
                "You can get Premium to unlock hundreds of publications", 40),
            Spacer(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
