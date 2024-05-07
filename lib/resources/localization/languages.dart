import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US' : {
      'app_bar_text' : 'GetX MVVM/MVC Pattern',
      'internet_exception' : 'No internet connection\n Please check your internet\n connection',
      'general_exception' : 'We are unable to process request\n Please try again',
      'splash_text' : 'Welcome Back',
    },
    'bn_BN' : {
      'app_bar_text' : 'GetX এমভিভিএম/এমভিসি প্যাটার্ন',
      'internet_exception' : 'No internet connection',
      'general_exception' : 'We are unable to process request\n Please try again',
    }
  };

}