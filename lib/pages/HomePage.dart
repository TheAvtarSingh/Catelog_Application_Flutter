import 'package:catelog_application/models/cart.dart';
import 'package:catelog_application/utils/routes.dart';
import 'package:catelog_application/widgets/Drawer.dart';
import 'package:catelog_application/widgets/Themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../cors/store.dart';
import '../models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;
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
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, store, status) => FloatingActionButton(
          backgroundColor: MyTheme.darkBluishColor,
          onPressed: () {
            Navigator.pushNamed(context, MyRoute.cartPage);
          },
          child: Icon(
            CupertinoIcons.cart,
            color: context.theme.accentColor,
          ),
        ).badge(
            color: Vx.red500,
            size: 28,
            count: _cart.items.length,
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
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
