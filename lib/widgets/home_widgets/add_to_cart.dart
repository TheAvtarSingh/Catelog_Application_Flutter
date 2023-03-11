import 'package:catelog_application/cors/store.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catelog.dart';
import '../Themes.dart';

class AddToCart extends StatelessWidget {
  final Item catelog;
  AddToCart({super.key, required this.catelog});

  // final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    // VxState.listen(context, to: []);
    VxState.watch(context, on: [AddMutation, RemoveMutation]);

    final CartModel _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart.items.contains(catelog) ?? false;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
            shape: MaterialStatePropertyAll(StadiumBorder())),
        onPressed: () {
          if (!isInCart) {
            AddMutation(catelog);
            // setState(() {});
          }
        },
        child: isInCart ? Icon(Icons.done) : "Add to Card".text.bold.make());
  }
}
