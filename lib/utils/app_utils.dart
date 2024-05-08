import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_mvvm_mvc_pattern/resources/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class AppUtils {
  static void fieldFocusChange(BuildContext context, FocusNode currentFocusNode,
      FocusNode nextFocusNode) {
    currentFocusNode.unfocus();
    FocusScope.of(context).requestFocus(nextFocusNode);
  }

  static showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.toastMessageBackgroundColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColors.toastMessageTextColor,
    );
  }

  static showSnackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.snackBarBackgroundColor,
      colorText: AppColors.snackBarTextColor,
    );
  }
}
