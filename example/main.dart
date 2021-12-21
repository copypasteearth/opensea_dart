import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asset_object;
import 'package:opensea_dart/pojo/collection_object.dart' as collection_object;
import 'dart:io';
void main() async{
  String? apiKey = "Put you api key here, or pass null to use without apikey";
  final openSea = OpenSea(apiKey);
  print(DateTime.now().toIso8601String());
  openSea.getOrders(side: OrderSide.buy, limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getEvents(limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getCollectionStats(slug: "copypasteearth").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getContract(assetContractAddress: "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getAsset(assetContractAddress: "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb", tokenId: "1",
          accountAddress: "0xb88f61e6fbda83fbfffabe364112137480398018").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getBundles(tokenIds:["1", "209"], limit: "1").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getCollections(limit: "1", offset: "5").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getCollection("copypasteearth").then((value) => print(value));
  await Future.delayed(const Duration(seconds: 5));
  openSea.getAssets(orderBy: OrderBy.saleDate, orderDirection: OrderDirection.asc,
          limit: "1", offset: "0", collection: "doodles-official").then((value) => print(value));
}
