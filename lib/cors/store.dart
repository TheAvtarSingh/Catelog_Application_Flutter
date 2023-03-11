import 'package:catelog_application/models/cart.dart';
import 'package:catelog_application/models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatelogModel catelog;
  late CartModel cart;

  MyStore() {
    catelog = CatelogModel();
    cart = CartModel();
    cart.catelog = catelog;
  }
}
