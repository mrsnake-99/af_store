import 'package:af_store/common/widgets/appbar/appbar.dart';
import 'package:af_store/features/shop/screens/orders/widgets/order_list.dart';
import 'package:af_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FAppBar(
        title: Text(
          'My Orders',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(FSizes.defaultSpace),
        //order list
        child: FOrderListItems(),
      ),
    );
  }
}
// Commit at 2022-01-26 14:33:47
// Commit at 2022-06-06 12:18:11
// Commit at 2022-01-14 09:36:40
// Commit at 2023-07-26 09:54:02
// Commit at 2024-06-02 14:45:35
// Commit at 2024-04-04 11:28:17
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
Random commit
Random commit
