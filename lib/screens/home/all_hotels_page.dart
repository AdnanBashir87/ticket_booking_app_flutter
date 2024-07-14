import 'package:flutter/material.dart';

import '../../base/res/styles/app_styles.dart';
import '../../base/utils/app_routes.dart';
import '../../base/utils/ticket_json.dart';

class AllHotelsPage extends StatelessWidget {
  const AllHotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        backgroundColor: AppStyles.bgColor,
        title: const Text('All Hotels'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .75,
            crossAxisSpacing: 20,
            mainAxisSpacing: 10,
          ),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
            var singlehotel = hotelList[index];
            return HotelGridView(hotel: singlehotel, index: index,);
          },
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  const HotelGridView({super.key, required this.hotel, required this.index,});
  final Map<String, String> hotel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.hotelDetailPage,arguments: {
          "index":index
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(hotel['image']!),
                  ),
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
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotel['city']!,
                  style: AppStyles.headlineStyle3.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  hotel['price']!,
                  style: AppStyles.headlineStyle4.copyWith(
                    color: AppStyles.kakiColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
