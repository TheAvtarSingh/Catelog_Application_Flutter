import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';
import '../models/catelog.dart';
import '../widgets/Drawer.dart';
import '../widgets/item_widget.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetMaxDisc.github.io",
            style: GoogleFonts.sansita(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatelogModel.Items != null && CatelogModel.Items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatelogModel.Items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatelogModel.Items[index],
                  );
                })
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
