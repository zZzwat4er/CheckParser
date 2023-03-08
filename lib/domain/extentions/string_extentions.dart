extension StringExtention on String{
  static final RegExp nameRegExp = RegExp(r'"(.*?)"');

  String get name => nameRegExp.stringMatch(this) ?? '';
}