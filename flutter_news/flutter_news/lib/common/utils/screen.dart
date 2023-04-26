import 'package:flutter_screenutil/flutter_screenutil.dart';

//設置寬度
double duSetWidth(double width) {
  return ScreenUtil().setWidth(width);
}

//設置高度
double duSetHeight(double height) {
  return ScreenUtil().setHeight(height);
}

//設置字體尺寸
double duSetFontSize(double fontSize) {
  return ScreenUtil().setSp(fontSize);
}
