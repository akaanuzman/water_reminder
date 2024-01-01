import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// This is a component created for selection operations for this class
class WaterReminderCupertinoPicker extends StatelessWidget {
  const WaterReminderCupertinoPicker({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemExtent: 64, // Her öğe için yükseklik
              childCount: 5, // Öğe sayısı
              onSelectedItemChanged: (int index) {},
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  "100 kg",
                  style: TextStyle(fontSize: 20.0),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
