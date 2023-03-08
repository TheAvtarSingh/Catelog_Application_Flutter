import 'package:flutter/material.dart';

import '../models/catelog.dart';
import '../widgets/Drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final days = 30;
  final name = "Avtar";

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatelogModel.Items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catelog Application",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
