import 'package:catelog_application/models/cart.dart';
import 'package:catelog_application/pages/Home_Details_Page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catelog.dart';
import '../Themes.dart';
import 'add_to_cart.dart';
import 'catelog_image.dart';

class CatelogList extends StatelessWidget {
  const CatelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.Items.length,
        itemBuilder: (context, index) {
          final catelog = CatelogModel.Items[index];
          return InkWell(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(catelog: catelog),
                ),
              ),
            },
            child: CatelogItem(
              catelog: catelog,
            ),
          );
        });
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({super.key, required this.catelog})
      : assert(catelog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
              tag: Key(catelog.id.toString()),
              child: CatelogImage(image: catelog.image)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catelog.name.text.lg.color(MyTheme.darkCreamColor).bold.make(),
              catelog.desc.text.sm
                  .textStyle(context.captionStyle)
                  .color(MyTheme.darkCreamColor)
                  .bold
                  .make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catelog.price}".text.bold.xl.make(),
                  AddToCart(
                    catelog: catelog,
                  )
                ],
              ).pOnly(right: 12)
            ],
          ))
        ],
      ),
    ).white.roundedLg.square(150).make().py16();
  }
}
