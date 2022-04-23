import 'package:af_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class FSettingsMenuTile extends StatelessWidget {
  const FSettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.OnTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? OnTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: FColors.primaryColor),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: OnTap,
    );
  }
}
// Commit at 2022-10-20 15:49:10
// Commit at 2022-08-23 15:03:03
// Commit at 2022-04-05 14:07:39
// Commit at 2023-01-19 17:49:37
// Commit at 2023-01-26 12:17:14
// Commit at 2023-01-03 10:18:52
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
