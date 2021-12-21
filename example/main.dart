import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asset_object;
import 'package:opensea_dart/pojo/collection_object.dart' as collection_object;

void main() {
  String? apiKey;
  final openSea = OpenSea(apiKey);
  openSea.getCollectionStats("copypasteearth").then((value) => print(value));
  openSea
      .getContract("0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb")
      .then((value) {
    print(value);
  });
  openSea
      .getAsset("0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb", "1",
          "0xb88f61e6fbda83fbfffabe364112137480398018")
      .then((value) {
    print(value);
  });
  openSea
      .getBundles(null, null, null, null, ["1", "209"], "2", null)
      .then((value) {
    List<asset_object.Bundles>? bundles = value.bundles;
    if (bundles != null) {
      print(bundles);
    }
  });
  openSea.getCollections("", "100", "5").then((value) {
    List<collection_object.Collection>? collections = value.collections;

    if (collections != null) {
      print(collections.length);
      for (var element in collections) {
        print(element);
      }
    }
  });
  openSea.getCollection("copypasteearth").then((value) {
    collection_object.Collection? collect = value.collection;
    if (collect != null) {
      print(collect);
    }
  });
  openSea
      .getAssets("", null, null, null, OrderBy.saleDate, OrderDirection.asc,
          "1", "1", "doodles-official")
      .then((value) {
    List<asset_object.Assets>? assets = value.assets;
    if (assets != null) {
      for (var element in assets) {
        print(element.lastSale);
      }
    }
  });
}
