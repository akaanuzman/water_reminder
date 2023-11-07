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
    return showAdaptiveDialog<bool?>(
      barrierColor: Colors.black12,
      barrierDismissible: false,
      context: context,
      builder: (context) => Lottie.asset(Assets.lotties.loading),
    );
  }
}
