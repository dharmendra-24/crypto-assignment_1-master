import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CryptoCurrency {
  String? id;
  String? symbol;
  String? name;
  String? image;
  double? cryptopric;
  double? marketCap;
  int? marketCapRank;
  double? high24;
  double? low24;
  double? pricechange24;
  double? pricechangeperperpricechange24;
  double? circulatingSupply;
  double? ath;
  double? atl;
  double? currentPrice;
  CryptoCurrency({
    this.id,
    this.symbol,
    this.name,
    this.image,
    this.cryptopric,
    this.marketCap,
    this.marketCapRank,
    this.high24,
    this.low24,
    this.pricechange24,
    this.pricechangeperperpricechange24,
    this.circulatingSupply,
    this.ath,
    this.atl,
    this.currentPrice,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'symbol': symbol,
      'name': name,
      'image': image,
      'cryptopric': cryptopric,
      'market_cap': marketCap,
      'marketCapRank': marketCapRank,
      'high24': high24,
      'low24': low24,
      'pricechange24': pricechange24,
      'pricechangeperperpricechange24': pricechangeperperpricechange24,
      'circulatingSupply': circulatingSupply,
      'ath': ath,
      'atl': atl,
      'currentPrice': currentPrice,
    };
  }

  factory CryptoCurrency.fromMap(Map<String, dynamic> map) {
    return CryptoCurrency(
      id: map['id'] != null ? map['id'] as String : null,
      symbol: map['symbol'] != null ? map['symbol'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
      cryptopric: map['cryptopric'] != null ? map['cryptopric'] * 1.0 : null,
      marketCap: map['market_cap'] != null ? map['market_cap'] * 1.0 : null,
      marketCapRank:
          map['market_cap_rank'] != null ? map['market_cap_rank'] as int : null,
      high24: map['high_24h'] != null ? map['high_24h'] * 1.0 : 0,
      low24: map['low_24h'] != null ? map['low_24h'] * 1.0 : 0,
      pricechange24:
          map['price_change_24h'] != null ? map['price_change_24h'] * 1.0 : 0,
      pricechangeperperpricechange24: map['price_change_percentage_24h'] != null
          ? map['price_change_percentage_24h'] * 1.0
          : 0,
      circulatingSupply: map['circulating_supply'] != null
          ? map['circulating_supply'] * 1.0
          : 0,
      ath: map['ath'] != null ? map['ath'] * 1.0 : 0,
      atl: map['atl'] != null ? map['atl'] * 1.0 : 0,
      currentPrice:
          map['current_price'] != null ? map['current_price'] * 1.0 : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CryptoCurrency.fromJson(String source) =>
      CryptoCurrency.fromMap(json.decode(source) as Map<String, dynamic>);
}
