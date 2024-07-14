import 'package:flutter/material.dart';

import '../../../base/res/media.dart';
import '../../../base/res/styles/app_styles.dart';

class Promotions extends StatelessWidget {
  const Promotions({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.42,
                height: 435,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      spreadRadius: 2,
                      blurRadius: 10,
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.room3),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "20%\ndiscount on\nthe early\nbooking of\nthis flight.\nDon't miss!",
                      textAlign: TextAlign.start,
                      style: AppStyles.headlineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(18),
                        height: 210,
                        width: size.width * 0.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppStyles.surveyColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor Survey',
                              style: AppStyles.headlineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Take the survey about our services and get discount',
                              style: AppStyles.textStyle
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppStyles.bigCircleColor,
                              width: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: 210,
                    width: size.width * 0.44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: AppStyles.takeLoveColor,
                    ),
                    child: Text(
                      'Take Love\n@@@ @@@@ @@@',
                      textAlign: TextAlign.center,
                      style: AppStyles.headlineStyle2
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          )
        ;
  }
}