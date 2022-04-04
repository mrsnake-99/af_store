import 'package:af_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:af_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FPrimaryHeaderWidget extends StatelessWidget {
  const FPrimaryHeaderWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FCurvedEdges(
      child: Container(
        color: FColors.primaryColor,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: FCircularContainer(
                backgroundColor: FColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
                top: 100,
                right: -300,
                child: FCircularContainer(
                  backgroundColor: FColors.white.withOpacity(0.1),
                )),
            child,
          ],
        ),
      ),
    );
  }
}
// Commit at 2022-11-19 17:12:34
// Commit at 2022-01-26 10:08:55
// Commit at 2023-01-15 12:50:24
// Commit at 2023-12-21 12:33:12
// Commit at 2023-10-23 10:16:04
// Commit at 2023-10-21 12:59:07
// Commit at 2023-09-08 14:11:04
// Commit at 2024-10-01 13:47:36
// Commit at 2024-06-01 12:07:34
// Commit at 2024-05-01 10:10:51
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
Random commit
Random commit
