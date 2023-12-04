import 'package:flutter/cupertino.dart';

class PageUtils {
  static push({
    required BuildContext context,
    required Widget page,
  }) {
    Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
      return page;
    }));
  }

  static pushReplacement({
    required BuildContext context,
    required Widget page,
  }) {
    Navigator.of(context)
        .pushReplacement(CupertinoPageRoute(builder: (context) {
      return page;
    }));
  }

  static pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
