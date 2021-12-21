
# unofficial opensea_dart everything works except testnet is not implemented yet

# OpenSea dart wrapper for use in dart and flutter applications

[https://opensea.io/](https://opensea.io/)

## what is not done is testnet


## Quick Example
```groovy
dependencies:
  opensea_dart: ^0.0.2

```
```dart
import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';

void main() async{
  String? apiKey = "Put you api key here, or pass null to use without apikey";
  final openSea = OpenSea(apiKey);

  ///getOrders (requires apiKey to be set)
  openSea.getOrders(side: OrderSide.buy, limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getEvents (requires apiKey to be set)
  openSea.getEvents(limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getCollectionStats
  openSea.getCollectionStats(slug: "copypasteearth").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getContract
  openSea.getContract(assetContractAddress: "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getAsset
  openSea.getAsset(assetContractAddress: "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb", tokenId: "1",
          accountAddress: "0xb88f61e6fbda83fbfffabe364112137480398018").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getBundles
  openSea.getBundles(tokenIds:["1", "209"], limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getCollections
  openSea.getCollections(limit: "1", offset: "5").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getCollection
  openSea.getCollection("copypasteearth").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));

  ///getAssets
  openSea.getAssets(orderBy: OrderBy.saleDate, orderDirection: OrderDirection.asc,
          limit: "1", offset: "0", collection: "doodles-official").then((value) => print(value));
}


```

## method signatures

```dart
Future<OrdersObject> getOrders({String? assetContractAddress, String? paymentTokenAddress, String? maker, String? taker, String? owner,bool? isEnglish, bool? bundled,bool? includeBundled,DateTime? listedAfter,DateTime? listedBefore, String? tokenId,List<String>? tokenIds, String? side,String? saleKind, String? limit, String? offset, String? orderBy, String? orderDirection})async

Future<EventObject> getEvents({String? assetContractAddress, String? collectionSlug, String? tokenId, String? accountAddress, String? eventType, bool? onlyOpenSea = false, String? auctionType, String? limit, String? offset, DateTime? occurredBefore, DateTime? occurredAfter})async

Future<BundlesObject> getBundles({bool? onSale,String? owner,String? assetContractAddress,List<String>? assetContractAddresses,List<String>? tokenIds,String? limit,String? offset}) async

Future<CollectionListObject> getCollections({String? assetOwner, String? offset, String? limit}) async

Future<CollectionObject> getCollection(String collection) async

Future<AssetsObject> getAssets({String? owner,List<String>? tokenIds,String? assetContractAddress,List<String>? assetContractAddresses,String? orderBy,String? orderDirection,String? offset,String? limit,String? collection}) async

Future<SingleAssetObject> getAsset({required String assetContractAddress,required String tokenId, String? accountAddress}) async

Future<ContractObject> getContract({required String assetContractAddress}) async

Future<Stats> getCollectionStats({required String slug}) async
```

# donate to buy this developer a cup of coffee

[Donate](https://commerce.coinbase.com/checkout/f5231452-a3f0-4cfd-bfa7-f0275ec5990e)

# Check out my NFT's

[My NFT Collection](https://opensea.io/copypasteearth)
