import 'package:catelog_application/cors/store.dart';
import 'package:catelog_application/models/catelog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
// SingleTon
  // static final CartModel _cartModel = CartModel._();

  // factory CartModel() {
  //   return _cartModel;
  // }
  // CartModel._interval();

  late CatelogModel _catelog;

  // catelog Field

// COLLECTION OF IDS - FOR EACT ITEM
  final List<int> _itemIds = [];

  // get Catelog
  CatelogModel get catelog => _catelog;

  // set

  set catelog(CatelogModel newCatelog) {
    assert(newCatelog != null);
    _catelog = newCatelog;
  }

  // Get Items
  List<Item> get items => _itemIds.map((id) => _catelog.getById(id)).toList();

  // get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

  void add(Item item) {
    _itemIds.add(item.id);
  }

  // remove
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

// Add Item
class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.add(item.id);
  }
}

// Remove Item
class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);
  @override
  perform() {
    store?.cart._itemIds.remove(item.id);
  }
}
