import 'package:catelog_application/widgets/Drawer.dart';
import 'package:catelog_application/widgets/Themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catelog_header.dart';
import '../widgets/home_widgets/catelog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final days = 30;

  final name = "Avtar";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catelogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catelogJson); //String to map
    var productData = decodedData["products"];
    CatelogModel.Items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(),
      drawer: MyDrawer(),
      // To Start from Area
      body: SafeArea(
          child: Container(
              // Adding Padding
              padding: Vx.m32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyHeader(),
                  if (CatelogModel.Items != null &&
                      CatelogModel.Items.isNotEmpty)
                    CatelogList().expand()
                  else
                    CircularProgressIndicator().centered().expand()
                ],
              ))),
    );
  }
}
