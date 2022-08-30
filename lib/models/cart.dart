import 'package:fapp/models/catalog.dart';

class CartModal {
  late CatelogModal _catelog;
  // store Ids of each item
  final List<int> _itemIds = [];
  CatelogModal get catalog => _catelog;
  set catalog(CatelogModal newCatalog) {
    assert(newCatalog != null);
    _catelog = newCatalog;
  }

  //get item in the cart
  List<Item> get items => _itemIds.map((id) => _catelog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add item
  void add(Item item) {
    _itemIds.add(item.id);
  }
  //remove item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
