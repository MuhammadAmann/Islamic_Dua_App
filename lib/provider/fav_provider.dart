import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FavouriteItemprovider with ChangeNotifier {
  List<int> _selecteditems = [];
  List<int> get selecteditems => _selecteditems;

  void additems(int value) {
    _selecteditems.add(value);
    notifyListeners();
  }

  void removeitems(int value) {
    _selecteditems.remove(value);
    notifyListeners();
  }
}
