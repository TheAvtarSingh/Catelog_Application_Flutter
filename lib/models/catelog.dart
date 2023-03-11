class CatelogModel {
  static List<Item> Items = [];
  // get item by id
  Item getById(int id) =>
      Items.firstWhere((element) => element.id == id, orElse: null);

  // by position

  Item getByPosition(int pos) => Items[pos];
}

class Item {
  final int id;
  final String name;
  final String desc;

  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
