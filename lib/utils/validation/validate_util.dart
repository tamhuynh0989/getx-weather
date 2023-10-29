import 'package:flutter/cupertino.dart';
import 'package:demo_getx_flutter/utils/validation/regexp_pattern.dart';

class ValidateUtil {
  ValidateUtil(this.context);

  late BuildContext context;

  static bool validateEmail(String value) {
    final regex = RegExp(RegExpPattern.emailRegExpPattern.toString());
    if (regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isNullEmptyOrWhitespace(String value) {
    if (value.isEmpty || value.trim().isEmpty) {
      return true;
    }
    return false;
  }

  static bool isNullOrEmpty(String? value) {
    if (value == null || value.isEmpty || value.trim().isEmpty) {
      return true;
    }
    return false;
  }

  static bool validatePhone(String value) {
    final regex = RegExp(RegExpPattern.mobileRegExpPattern.toString());
    if (regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool contains(String str, dynamic seed) {
    return str.contains(seed.toString());
  }

  static bool matches(String str, String pattern) {
    final re = RegExp(pattern);
    return re.hasMatch(str);
  }

  static bool equals(String? str, dynamic comparison) {
    return str == comparison.toString();
  }

  static bool isNull(String? str) {
    return str == null || str.isEmpty;
  }

  static bool isLowercase(String str) {
    return str == str.toLowerCase();
  }

  static bool isUppercase(String str) {
    return str == str.toUpperCase();
  }

  static bool isAlpha(String str) {
    return RegExp(RegExpPattern.alpha.toString()).hasMatch(str);
  }

  static bool isInt(String str) {
    return RegExp(RegExpPattern.int.toString()).hasMatch(str);
  }

  static bool isFloat(String str) {
    return RegExp(RegExpPattern.float.toString()).hasMatch(str);
  }

  static bool isNumeric(String str) {
    return RegExp(RegExpPattern.numeric.toString()).hasMatch(str);
  }

  static bool isAlphanumeric(String str) {
    return RegExp(RegExpPattern.alphanumeric.toString()).hasMatch(str);
  }

  static bool isBase64(String str) {
    return RegExp(RegExpPattern.base64.toString()).hasMatch(str);
  }

  static bool isUrl(String value) {
    return RegExp(RegExpPattern.url.toString()).hasMatch(value);
  }

  static bool isEmpty(Object? object) {
    if (object == null) {
      return true;
    }
    if (object is String && object.isEmpty) {
      return true;
    } else if (object is Iterable && object.isEmpty) {
      return true;
    } else if (object is Map && object.isEmpty) {
      return true;
    }
    return false;
  }

  static bool isNotEmpty(Object? object) {
    return !isEmpty(object);
  }

  static bool isContainedNumberOrNonWord(String value) {
    final regexNumber = RegExp(RegExpPattern.containNumber.toString());
    final regexNonWord = RegExp(RegExpPattern.containNonWord.toString());
    if (regexNumber.hasMatch(value) || regexNonWord.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isContainedLowerUpperCase(String value) {
    final regexUpper = RegExp(RegExpPattern.containUpperCase.toString());
    final regexLower = RegExp(RegExpPattern.containLowerCase.toString());
    if (regexUpper.hasMatch(value) && regexLower.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isContainedLowerCase(String value) {
    final regex = RegExp(RegExpPattern.containLowerCase.toString());
    if (regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isContainedNonWord(String value) {
    final regex = RegExp(RegExpPattern.containLowerCase.toString());
    if (regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isBetween8to20(String value) {
    if (value.length >= 8 && value.length <= 20) {
      return true;
    }
    return false;
  }

  static bool containSpace(String value) {
    final regex = RegExp(RegExpPattern.notContainSpace.toString());
    if (regex.hasMatch(value)) {
      return true;
    }
    return false;
  }

  static bool isBetween8to13(String value) {
    if (!(value.length >= 8)) {
      return true;
    }
    return false;
  }

  static bool isPercentValid(String value) {
    if (!RegExp(RegExpPattern.numeric.toString()).hasMatch(value)) {
      return false;
    }
    if (int.parse(value) < 0 || int.parse(value) > 100) {
      return false;
    }
    return true;
  }

  static bool capacityIsTooBig(int value, int sizeInKB) {
    return value >= sizeInKB * 1000;
  }

  static bool isGreaterThanZero(int value) {
    return value > 0;
  }

  static int compareVersion(String v1, String v2) {
    if (isEmpty(v1) || isEmpty(v2)) {
      return 0;
    }

    return compareArrayVersion(splitVersion(v1), splitVersion(v2), 0);
  }

  static List<int> splitVersion(String version) {
    final ret = <int>[];
    final List<String> tmp = version.split(".");
    for (int i = 0; i < tmp.length; i++) {
      ret.add(int.parse(tmp[i]));
    }
    return ret;
  }

  static int compareArrayVersion(List<int> v1, List<int> v2, int idx) {
    if (v1[idx] > v2[idx]) {
      return 1;
    } else if (v1[idx] < v2[idx]) {
      return -1;
    } else {
      if (v1.length - 1 == idx) {
        return 0;
      } else {
        // ignore: parameter_assignments
        return compareArrayVersion(v1, v2, ++idx);
      }
    }
  }
}
