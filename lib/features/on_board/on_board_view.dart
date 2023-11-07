// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';
import 'package:water_reminder/products/generation/index.dart';
import 'package:water_reminder/products/widgets/loading/water_reminder_loading.dart';

/// This class contains the view code of the [OnBoardView]
class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World'),
            ElevatedButton(
              onPressed: () => WRLoading.show(context: context),
              child: const Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
