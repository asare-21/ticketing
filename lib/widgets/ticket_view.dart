
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/config/app_layout.dart';
import 'package:tickets/widgets/lower_ticket_half.dart';
import 'package:tickets/widgets/upper_ticket_half.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    var copyWith = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontWeight: FontWeight.bold, color: Colors.white);
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: size.width * 0.75,
      child: Column(
        children: [
          const Gap(10),
          UpperHalfTicket(copyWith: copyWith),
          LowerHalfTicket(
            copyWith: copyWith,
          )
        ],
      ),
    );
  }
}
