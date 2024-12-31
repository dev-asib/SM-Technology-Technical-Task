import 'package:uip_tv/core/exported_files/exported_files.dart';

class FormValidators {
  static String? searchValidate(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return HomeStrings.kSearchErrorMessageText;
    }
    return null;
  }
}
