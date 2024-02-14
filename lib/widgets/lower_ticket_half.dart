import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets/config/helpers.dart';

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
