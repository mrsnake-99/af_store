import 'package:flutter/material.dart';

class FProductPriceText extends StatelessWidget {
  const FProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;
  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: lineThrough ? TextDecoration.lineThrough : null,
              ),
    );
  }
}
// Commit at 2023-12-22 10:01:24
// Commit at 2023-06-05 13:01:51
// Commit at 2024-07-23 16:43:12
// Commit at 2024-12-15 17:38:09
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
