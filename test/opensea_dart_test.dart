import 'package:flutter_test/flutter_test.dart';
import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';
import 'package:opensea_dart/pojo/contract_object.dart';
import 'package:opensea_dart/pojo/single_asset_object.dart';

void main() {
  group('Opensea', () {
    String? apiKey;
    final openSea = OpenSea(apiKey, testNet: false);

    test('getOrders OrderSide.buy', () async {
      ///getOrders (requires apiKey to be set)
      expect(
          () async => await openSea.getOrders(side: OrderSide.buy, limit: "1"),
          throwsA(isA<Exception>()));
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getOrders', () async {
      ///getEvents (requires apiKey to be set)
      expect(() async => await openSea.getEvents(limit: "1"),
          throwsA(isA<Exception>()));
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getCollectionStats', () async {
      ///getCollectionStats
      Stats value = await openSea.getCollectionStats(slug: "copypasteearth");
      print(value);
      expect(value.count, greaterThanOrEqualTo(53));
      expect(value.numOwners, greaterThanOrEqualTo(1));
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getContract', () async {
      ///getContract (requires apiKey to be set)
      expect(
          () async => await openSea.getContract(
              assetContractAddress:
                  "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb"),
          throwsA(isA<Exception>()));
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getAsset', () async {
      ///getAsset (requires apiKey to be set)
      expect(
          () async => await openSea.getAsset(
              assetContractAddress:
                  "0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb",
              tokenId: "1",
              accountAddress: "0xb88f61e6fbda83fbfffabe364112137480398018"),
          throwsA(isA<Exception>()));
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getBundles', () async {
      ///getBundles
      BundlesObject value = await openSea.getBundles(
        tokenIds: ["1", "209"],
        limit: "1",
      );
      print(value);
      expect(value.bundles, isNotNull);
      expect(value.bundles!.length, 1);
      expect(value.bundles!.first.name, 'World Cup Collection 2022 - Pack 2');
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getCollections', () async {
      ///getCollections
      CollectionListObject value = await openSea.getCollections(
        limit: "1",
        offset: "5",
      );
      print(value);
      expect(value.collections, isNotNull);
      expect(value.collections!.length, 1);
      expect(value.collections!.first.name, isNotEmpty);
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getCollection copypasteearth', () async {
      ///getCollection
      CollectionObject value = await openSea.getCollection("copypasteearth");
      print(value);
      expect(value.collection, isNotNull);
      expect(value.collection!.name, 'copypasteearth');
      expect(value.collection!.createdDate, '2021-12-16T23:31:48.851508+00:00');
      await Future.delayed(const Duration(milliseconds: 500));
    });

    test('getAssets', () async {
      ///getAssets
      expect(
          () async => await openSea.getAssets(
              orderBy: OrderBy.saleDate,
              orderDirection: OrderDirection.asc,
              limit: "1",
              offset: "0",
              collection: "doodles-official"),
          throwsA(isA<Exception>()));
      await Future.delayed(const Duration(milliseconds: 500));
    });
  });

  group('Opensea Testnets', () {
    String? apiKey;
    final openSea = OpenSea(apiKey, testNet: true);

    test('getCollectionStats', () async {
      Stats value = await openSea.getCollectionStats(slug: "opensea-creature");
      print(value);
      expect(value.count, greaterThanOrEqualTo(53));
      expect(value.numOwners, greaterThanOrEqualTo(1));
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    test('getContract', () async {
      ContractObject value = await openSea.getContract(
          assetContractAddress: "0x06012c8cf97bead5deae237070f9587f8e7a266d");
      print(value);
      expect(value.name, 'Unidentified contract');
      expect(value.address, '0x06012c8cf97bead5deae237070f9587f8e7a266d');
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    test('getAsset', () async {
      SingleAssetObject value = await openSea.getAsset(
        assetContractAddress: "0x0d1a602ffae312379cad1c32d586dc8b5f0f6ced",
        tokenId: '1',
      );
      print(value);
      expect(value.name, 'CloneX #1');
      expect(
          value.creator!.address, '0x018281853ecc543aa251732e8fdaa7323247ebeb');
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    test('getBundles', () async {
      await Future.delayed(const Duration(milliseconds: 6000));
      BundlesObject value = await openSea.getBundles(
        tokenIds: ["1", "209"],
        limit: "1",
      );
      print(value);
      expect(value.bundles, isNotNull);
      expect(value.bundles!.length, 1);
      expect(value.bundles!.first.name, 's');
      expect(value.bundles!.first.assetContract!.createdDate,
          '2022-11-25T10:40:16.361538');
    });

    test('getCollections', () async {
      CollectionListObject value = await openSea.getCollections(
        limit: "1",
        offset: "5",
      );
      print(value);
      expect(value.collections, isNotNull);
      expect(value.collections!.length, 1);
      expect(value.collections!.first.name, isNotEmpty);
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    test('getCollection opensea-creature', () async {
      CollectionObject value = await openSea.getCollection("opensea-creature");
      print(value);
      expect(value.collection, isNotNull);
      expect(value.collection!.name, 'OpenSea Creature');
      expect(value.collection!.createdDate, '2019-04-26T22:00:06.078095+00:00');
      await Future.delayed(const Duration(milliseconds: 5000));
    });

    test('getAssets', () async {
      AssetsObject value = await openSea.getAssets(
          orderDirection: OrderDirection.desc, limit: "1", offset: "0");
      print(value);
      expect(value.assets, isNotNull);
      expect(value.assets!.length, 1);
      expect(value.assets!.first.creator!.address,
          '0x018281853ecc543aa251732e8fdaa7323247ebeb');
      await Future.delayed(const Duration(milliseconds: 5000));
    });
  });
}
