import 'package:get/get.dart';

validate(
    {required String val,
    required int min,
    required int max,
    required String type,
    String? password,
    String? confirmPassword}) {
  if (type == 'email') {
    if (!GetUtils.isEmail(val)) {
      return 'not valid email';
    }
  }
  if (type == 'confirm password') {
    if (password != confirmPassword) {
      return 'password not match';
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not valid phone";
    }
  }

  if (val.isEmpty) {
    return "This Field Required";
  }
  if (type == 'Name of Service') {
    return "Pleas Enter Name of Service";
  }
  if (type == 'Cost Service') {
    return "Pleas Enter Cost";
  }

  if (val.length < min) {
    return "can't be less than $min";
  }

  if (val.length > max) {
    return "can't be larger than $max";
  }
}
