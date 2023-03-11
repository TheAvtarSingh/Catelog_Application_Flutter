import 'package:catelog_application/models/catelog.dart';
import 'package:catelog_application/widgets/Themes.dart';
import 'package:catelog_application/widgets/home_widgets/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catelog;
  const HomeDetailsPage({super.key, required this.catelog})
      : assert(catelog != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.theme.hintColor),
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catelog.price}"
              .text
              .bold
              .xl2
              .color(context.theme.errorColor)
              .make(),
          AddToCart(
            catelog: catelog,
          ).wh(150, 50)
        ],
      ).p16(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: catelog.id.toString(),
                    child: Image.network(catelog.image))
                .h32(context),
            Expanded(
              child: Container(
                color: context.canvasColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catelog.name.text.xl4
                        .color(context.theme.hintColor)
                        .bold
                        .make(),
                    catelog.desc.text
                        .textStyle(context.captionStyle)
                        .color(context.theme.errorColor)
                        .xl
                        .make(),
                  ],
                ).py64(),
              ),
            )
          ],
        ).centered().py32(),
      ),
    );
  }
}
