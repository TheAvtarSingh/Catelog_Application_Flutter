import 'package:catelog_application/models/catelog.dart';
import 'package:catelog_application/widgets/Themes.dart';
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
        backgroundColor: MyTheme.creamColor,
        iconTheme: IconThemeData(color: MyTheme.darkBluishColor),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: Vx.mH8,
        children: [
          "\$${catelog.price}".text.bold.xl2.make(),
          ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStatePropertyAll(StadiumBorder())),
                  onPressed: () {},
                  child: "Buy".text.bold.make())
              .wh(100, 50)
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
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catelog.name.text.xl4
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    catelog.desc.text.textStyle(context.captionStyle).xl.make(),
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
