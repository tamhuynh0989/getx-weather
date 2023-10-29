class RegExpPattern {
  static const Pattern emailRegExpPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static const Pattern mobileRegExpPattern = r'(^(?:[+0]9)?[0-9]{11,18}$)';

  static const Pattern alpha = r'^[a-zA-Z]+$';

  static const Pattern alphanumeric = r'^[a-zA-Z0-9]+$';

  static const Pattern numeric = r'^-?[0-9]+$';

  static const Pattern int = r'^(?:-?(?:0|[1-9][0-9]*))$';

  static const Pattern float =
      r'^(?:-?(?:[0-9]+))?(?:\.[0-9]*)?(?:[eE][\+\-]?(?:[0-9]+))?$';

  static const Pattern base64 =
      r'^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$';

  static const Pattern url =
      r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

  static const Pattern containNumber = r"^(.*\d.*)$";

  static const Pattern containUpperCase = r"^(?=.*[A-Z])";

  static const Pattern containLowerCase = r"^(?=.*[a-z])";

  static const Pattern containNonWord = r"^(.*\W.*)$";

  static const Pattern notContainSpace = r"^(.*\s.*)$";
}
