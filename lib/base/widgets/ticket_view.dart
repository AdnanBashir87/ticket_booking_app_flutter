import 'package:flutter/material.dart';
import 'package:ticket_booking_app_flutter/base/widgets/text_style_third.dart';

import '../res/styles/app_styles.dart';
import 'app_column_text.dart';
import 'app_layout_builder_widget.dart';
import 'big_circle.dart';
import 'big_dot.dart';
import 'text_style_fourth.dart';

class TicketView extends StatelessWidget {
  const TicketView({
    super.key,
    required this.ticket,
    this.wholeScreen = false,
    this.isColor,
  });

  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: 180,
      width: size.width * 0.85,
      child: Container(
        margin: EdgeInsets.only(
          right: wholeScreen == true ? 0 : 16,
        ),
        child: Column(
          children: [
            // Blue part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketBlue
                    : AppStyles.ticketWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(isColor: isColor),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const AppLayoutBuilderWidget(
                              ranDivider: 6,
                            ),
                            Transform.rotate(
                              angle: 1.57,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color: isColor == null
                                    ? AppStyles.ticketWhite
                                    : AppStyles.planeColor2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      TextStyleThird(
                        text: ticket['to']['code'],
                        isColor: isColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['from']['name'],
                          isColor: isColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(
                        text: ticket['flying_time'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
                          align: TextAlign.end,
                          isColor: isColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circle and dots part of ticket
            Container(
              height: 20,
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketWhite,
              child: Row(
                children: [
                  const BigCircle(isRight: true),
                  Expanded(
                    child: AppLayoutBuilderWidget(
                      ranDivider: 16,
                      width: 6,
                      isColor: isColor,
                    ),
                  ),
                  const BigCircle(isRight: false),
                ],
              ),
            ),
            // orange part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketOrange
                    : AppStyles.ticketWhite,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                  bottomRight: Radius.circular(isColor == null ? 21 : 0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnText(
                        topText: ticket['date'],
                        bottomText: 'Date',
                        crossAxisAlignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnText(
                        topText: ticket['departure_time'],
                        bottomText: 'Departure Time',
                        isColor: isColor,
                      ),
                      AppColumnText(
                        topText: ticket['number'].toString(),
                        bottomText: 'Number',
                        crossAxisAlignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
