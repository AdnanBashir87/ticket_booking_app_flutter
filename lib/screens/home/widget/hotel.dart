import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});
  final Map<String, String> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.only(right: 16),
      height: 350,
      width: size.width * 0.6,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(hotel['image']!),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            hotel['name']!,
            style: AppStyles.headlineStyle2.copyWith(
              color: AppStyles.kakiColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            hotel['city']!,
            style: AppStyles.headlineStyle3.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            hotel['price']!,
            style: AppStyles.headlineStyle1.copyWith(
              color: AppStyles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
