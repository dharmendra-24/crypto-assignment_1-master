import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/cryptocurrency.dart';
import 'package:flutter_application_1/provider/market_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  final CryptoCurrency currentCrypto;
  const DetailPage({super.key, required this.currentCrypto});

  Widget titleAndDetail(
    String title,
    String detail,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          detail,
          style: TextStyle(fontSize: 18, color: Colors.orangeAccent),
        )
      ],
    );
  }

  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
              padding: const EdgeInsets.only(),
              child: Consumer<marketProvider>(
                  builder: (context, marketProvider, child) {
                // CryptoCurrency currentCrypto =
                //     marketProvider.fetchCryptoById(widget.id);
                return ListView(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 0),
                      margin: const EdgeInsets.all(0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: NetworkImage(currentCrypto.image!),
                        ),
                        title: Text(
                          "${currentCrypto.name!}(${currentCrypto.symbol!.toUpperCase()})",
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                          "₹${currentCrypto.currentPrice!.toStringAsFixed(4)}",
                          style: const TextStyle(
                            fontSize: 30,
                            color: Color(0xff0395eb),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Price Change (24)',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "${currentCrypto.pricechangeperperpricechange24!.toStringAsFixed(4)}%(${currentCrypto.pricechange24!.toStringAsFixed(4)})",
                            style: const TextStyle(
                                fontSize: 14, color: Colors.green),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "Market Cap",
                            '₹${currentCrypto.marketCap!.toStringAsFixed(2)}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "MarketCapRank",
                            '#${currentCrypto.marketCapRank.toString()}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "Low 24h",
                            '₹${currentCrypto.low24!.toStringAsFixed(4)}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "High 24h",
                            '₹${currentCrypto.high24!.toStringAsFixed(4)}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "Circulating Supply",
                            '₹${currentCrypto.circulatingSupply.toString()}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "All Time low",
                            '₹${currentCrypto.atl.toString()}',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          titleAndDetail(
                            "All Time High",
                            '₹${currentCrypto.ath.toString()}',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              })),
        ));
  }
}
