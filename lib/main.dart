import 'package:flutter/material.dart';
import 'base/bottom_navigation_bar.dart';
import 'base/utils/app_routes.dart';
import 'screens/home/all_hotels_page.dart';
import 'screens/home/all_tickets.dart';
import 'screens/ticket/hotel_details_page.dart';
import 'screens/ticket/tickets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        AppRoutes.homepage: (context) => const BaseNavigationBar(),
        AppRoutes.allticketspage: (context) => const AllTickets(),
        AppRoutes.ticketPage: (context) => const TicketsPage(),
        AppRoutes.allhotelspage: (context) => const AllHotelsPage(),
        AppRoutes.hotelDetailPage: (context)=> const HotelDetailsPage()
      },
    );
  }
}
