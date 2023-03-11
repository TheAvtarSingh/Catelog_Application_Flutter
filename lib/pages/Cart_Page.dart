import 'package:catelog_application/cors/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../widgets/Themes.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: context.canvasColor,
        iconTheme: IconThemeData(color: context.theme.hintColor),
        title: "Cart".text.bold.color(context.theme.hintColor).make(),
        centerTitle: true,
      ),
      body: Column(
        children: [_CartList().p32().expand(), Divider(), _CartTotal()],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "\$${_cart.totalPrice}".text.xl5.color(context.theme.hintColor).make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: "Shop Not Opened Yet..".text.make()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.deepPurple)),
                child: "Buy Now".text.white.make())
            .w24(context)
            .h10(context)
      ]),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.items.isEmpty
        ? "Cart is Empty".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done, color: context.theme.errorColor),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle_outline,
                        color: context.theme.errorColor),
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      // setState(() {});
                    },
                  ),
                  title: _cart.items[index].name.text
                      .color(context.theme.hintColor)
                      .make(),
                ));
  }
}
