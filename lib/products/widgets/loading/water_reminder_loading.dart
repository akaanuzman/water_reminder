// ignore_for_file: prefer_const_declarations, omit_local_variable_types

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:water_reminder/products/generation/index.dart';

/// This class contains the view code of the [WRLoading]
final class WRLoading {
  WRLoading._();

  /// This method is used to show the loading dialog.
  static Future<bool?> show({
    required BuildContext context,
  }) async {
    final double opacityValue = .2;
    final bool barrierDismissible = false;
    return showDialog<bool?>(
      barrierColor: Colors.white.withOpacity(opacityValue),
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (context) => Lottie.asset(Assets.lotties.loading),
    );
  }
}
