import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:navigator_plus/result.dart';

/// Navigate screens with Name
class NavigatorName {
  NavigatorName._();

  /// get passed data from screen
  static getArguments(BuildContext context) {
    return ModalRoute.of(context)!.settings.arguments;
  }

  /// Navigate to another screens
  static to(
    BuildContext context,
    String routeName, {
    dynamic arguments,
    Function(Result result)? result,
  }) {
    Navigator.pushNamed(context, routeName, arguments: arguments).then((res) {
      if (res != null) {
        result!(res as Result);
      }
    });
  }

  /// Navigate screen and remove current screen
  static toFinish(BuildContext context, String routeName, {dynamic arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  /// Navigate screens and until screen remove
  static toFinishUntil(
    BuildContext context,
    String routeName,
    String untilRouteName, {
    dynamic arguments,
  }) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      routeName,
      ModalRoute.withName(untilRouteName),
      arguments: arguments,
    );
  }

  /// Finish or Remove or Close or Back screen
  static finish(BuildContext context, {Object? result}) {
    Navigator.pop(context, result);
  }
}

/// [Navigate] provide functionality for check data
class Navigate {
  /// check data from page (if onFailure null then page finish)
  static extrasData({
    required BuildContext context,
    required Map? data,
    required Function(Map data) onSuccess,
    Function? onFailure,
    List<String> keys = const <String>[],
  }) {
    if (data != null) {
      bool isAllKeyContains = true;
      for (String key in keys) {
        if (!data.containsKey(key)) {
          isAllKeyContains = false;
          break;
        }
      }
      if (isAllKeyContains) {
        onSuccess(data);
      } else {
        log("onFailure");
        if (onFailure != null) {
          onFailure();
        } else {
          NavigatorName.finish(context);
        }
      }
    } else {
      log("onFailure");
      if (onFailure != null) {
        onFailure();
      } else {
        NavigatorName.finish(context);
      }
    }
  }
}
