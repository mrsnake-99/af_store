import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class FRatingsIndicator extends StatelessWidget {
  const FRatingsIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        flex: 1,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Expanded(
        flex: 11,
        child: SizedBox(
          width: FDeviceUtils.getScreenWidth(context) * 0.8,
          child: LinearProgressIndicator(
            value: value,
            minHeight: 11,
            backgroundColor: FColors.grey,
            borderRadius: BorderRadius.circular(7),
            valueColor: const AlwaysStoppedAnimation(FColors.primaryColor),
          ),
        ),
      )
    ]);
  }
}
// Commit at 2022-11-10 12:08:20
// Commit at 2022-11-10 12:51:10
// Commit at 2023-05-15 11:47:58
// Commit at 2024-02-14 14:02:00
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
