import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHeader extends StatelessWidget {
  const MyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // To Start from Left
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "ProDiscounts.github.io"
            // Text Type
            .text
            // exxtra Large
            .xl4
            // Bold
            .bold
            // Color
            .color(context.theme.hintColor)
            // to make it a widget
            .make()
            .p0(),
        "Trending Products".text.xl2.color(context.theme.errorColor).make(),
      ],
    );
  }
}
