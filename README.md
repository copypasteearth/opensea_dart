
# This repository is under development please check back for future release on pub.dev

# OpenSea dart wrapper for use in dart and flutter applications

## making progress, some functions are done but Im waiting for an API key to be able to test the calls that require an apikey. What is done will work with an api key just pass it to the constructor

## Quick Example

```dart

final openSea = OpenSea(null);
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
```

# donate to buy this developer a cup of coffee

[Donate](https://commerce.coinbase.com/checkout/f5231452-a3f0-4cfd-bfa7-f0275ec5990e)

# Check out my NFT's

[My NFT Collection](https://opensea.io/copypasteearth)
