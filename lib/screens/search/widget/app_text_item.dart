import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class AppTextItem extends StatelessWidget {
  const AppTextItem({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppStyles.planeColor,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: AppStyles.textStyle,
          )
        ],
      ),
    );
  }
}
