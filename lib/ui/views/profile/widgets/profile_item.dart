import 'package:arcana_app/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Texts.regular(title),
      leading: Icon(
        icon,
      ),
      trailing: Icon(
        IconlyLight.arrow_right_2,
      ),
    );
  }
}
