// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:kartal/kartal.dart';
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
            ElevatedButton(
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: context.sized.dynamicHeight(.5),
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text("Kapat"),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text("Tamam"),
                                ),
                              ],
                            ),
                            Expanded(
                              child: CupertinoPicker.builder(
                                itemExtent: 64.0, // Her öğe için yükseklik
                                childCount: 5, // Öğe sayısı
                                onSelectedItemChanged: (int index) {},
                                itemBuilder: (BuildContext context, int index) {
                                  return Center(
                                    child: Text(
                                      "100 kg",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: const Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
