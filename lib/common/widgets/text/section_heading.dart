import 'package:flutter/material.dart';

class FSectionHeading extends StatelessWidget {
  const FSectionHeading({
    super.key,
    this.textColor,
    this.showActionButtion = true,
    required this.title,
    this.buttonTitle = 'View All',
    this.onPressed,
  });
  final Color? textColor;
  final bool showActionButtion;
  final String title, buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButtion)
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonTitle,
            ),
          )
      ],
    );
  }
}
// Commit at 2022-04-12 18:56:00
// Commit at 2022-12-28 11:12:06
// Commit at 2022-11-17 11:11:17
// Commit at 2022-04-08 09:18:36
// Commit at 2022-11-02 10:31:39
// Commit at 2023-02-18 10:15:12
// Commit at 2023-12-05 18:09:11
// Commit at 2023-04-25 09:52:38
// Commit at 2023-03-11 09:36:52
// Commit at 2024-01-24 17:09:50
// Commit at 2024-10-12 11:20:42
// Random commit
