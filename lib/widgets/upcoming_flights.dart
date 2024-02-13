import 'package:flutter/material.dart';
import 'package:tickets/widgets/ticket_view.dart';

class UpcomingFlightsWidgets extends StatefulWidget {
  const UpcomingFlightsWidgets({super.key});

  @override
  State<UpcomingFlightsWidgets> createState() => _UpcomingFlightsWidgetsState();
}

class _UpcomingFlightsWidgetsState extends State<UpcomingFlightsWidgets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: const Text("View All"))
            ],
          ),
          const SingleChildScrollView(
            padding: EdgeInsets.only(left: 10),
            scrollDirection: Axis.horizontal,
            
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
