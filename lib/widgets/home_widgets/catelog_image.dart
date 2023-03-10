import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Themes.dart';

class CatelogImage extends StatelessWidget {
  final String image;
  const CatelogImage({super.key, required this.image}) : assert(image != null);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.p16.rounded.color(MyTheme.creamColor).make().p16();
  }
}
