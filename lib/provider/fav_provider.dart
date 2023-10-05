import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FavouriteItemprovider with ChangeNotifier {
  List<int> _selecteditems = [];
  List<int> get selecteditems => _selecteditems;
  String _searchvalue = '';
  String get searchvalue => _searchvalue;

  void additems(int value) {
    _selecteditems.add(value);
    notifyListeners();
  }

  void removeitems(int value) {
    _selecteditems.remove(value);
    notifyListeners();
  }

  void updatesearchitem(String query) {
    _searchvalue = query;
    notifyListeners();
  }
}
