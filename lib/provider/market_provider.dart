import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/api.dart';
import 'package:flutter_application_1/models/cryptocurrency.dart';

class marketProvider with ChangeNotifier {
  bool isLoading = true;
  List<CryptoCurrency> markets = [];
  marketProvider() {
    fetchdata();
  }

  void fetchdata() async {
    List<dynamic> mark = await API.getMarkets();

    List<CryptoCurrency> temp = [];

    for (var market in mark) {
      CryptoCurrency newCrypto = CryptoCurrency.fromMap(market);
      temp.add(newCrypto);
    }

    markets = temp;
    isLoading = false;

    notifyListeners();
    Timer(const Duration(seconds: 3), () {
      fetchdata();
    });
  }

  CryptoCurrency fetchCryptoById(String id) {
    CryptoCurrency crypto =
        markets.where((element) => element.id == id).toList()[0];
    return crypto;
  }
}
