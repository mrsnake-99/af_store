import 'package:af_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class FCurvedEdges extends StatelessWidget {
  const FCurvedEdges({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FCustomCurvedEdges(),
      child: child,
    );
  }
}
// Commit at 2022-05-03 15:06:40
// Commit at 2022-06-23 16:47:35
// Commit at 2022-04-20 17:13:51
// Commit at 2023-12-22 14:06:11
// Commit at 2024-11-13 13:56:00
// Commit at 2024-06-18 15:53:54
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
