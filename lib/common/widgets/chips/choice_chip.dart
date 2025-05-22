import 'package:af_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:af_store/utils/constants/colors.dart';
import 'package:af_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class FChoiceChip extends StatelessWidget {
  const FChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = FHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? FColors.white : null),
        avatar: isColor
            ? FCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: FHelperFunctions.getColor(text)!)
            : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? FHelperFunctions.getColor(text)! : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
      ),
    );
  }
}
// Commit at 2023-12-11 16:57:16
// Commit at 2023-03-08 13:43:06
// Commit at 2023-07-07 12:59:16
// Commit at 2024-09-07 15:43:06
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
