import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/config/app_layout.dart';
import 'package:tickets/config/helpers.dart';

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
          UpperHalfTicket(copyWith: copyWith),
          LowerHalfTicket(
            copyWith: copyWith,
          )
        ],
      ),
    );
  }
}

class LowerHalfTicket extends StatelessWidget {
  const LowerHalfTicket({super.key, required this.copyWith});
  final TextStyle copyWith;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Styles.orangeColor,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10))),
      // padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 10,
                height: 20,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      color: Colors.white,
                      shape: BoxShape.rectangle),
                ),
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) => Flex(
                    direction: Axis.horizontal,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => Container(
                            height: 1,
                            width: 5,
                            decoration:
                                const BoxDecoration(color: Colors.white))),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
                height: 20,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Colors.white,
                      shape: BoxShape.rectangle),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("1 May", style: copyWith),
                    Text(
                      "08:00 AM",
                      style: copyWith,
                    ),
                    Text(
                      "47A",
                      style: copyWith,
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Date", style: copyWith),
                    Text("Departure Time",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white)),
                    Text(
                      "Seat",
                      style: copyWith,
                      textAlign: TextAlign.end,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UpperHalfTicket extends StatelessWidget {
  const UpperHalfTicket({
    super.key,
    required this.copyWith,
  });

  final TextStyle copyWith;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Styles.containerColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      padding: const EdgeInsets.all(16),
      // margin: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("NYC", style: copyWith),
              const Spacer(),
              Expanded(
                  child: Stack(
                children: [
                  SizedBox(
                    height: 24,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        var floor = (constraints.constrainWidth() / 8).floor();
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              floor,
                              (index) => SizedBox(
                                  width:
                                      index == 0 || index == floor - 1 ? 10 : 3,
                                  height:
                                      index == 0 || index == floor - 1 ? 10 : 2,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          shape:
                                              index == 0 || index == floor - 1
                                                  ? BoxShape.circle
                                                  : BoxShape.rectangle,
                                          color: Colors.white)))),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    child: Transform.rotate(
                      angle: (90 * pi) / 180,
                      child: const Icon(
                        Icons.local_airport_rounded,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
              const Spacer(),
              Text(
                "LHR",
                style: copyWith,
              ),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New York", style: copyWith),
              Text("07H 50M",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.white)),
              Text(
                "London",
                style: copyWith,
                textAlign: TextAlign.end,
              ),
            ],
          )
        ],
      ),
    );
  }
}
