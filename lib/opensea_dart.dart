library opensea_dart;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';
import 'package:opensea_dart/pojo/contract_object.dart';
import 'package:opensea_dart/pojo/single_asset_object.dart';

/// OpenSea class
/// the entry point for the package
/// constructor takes a String apiKey
class OpenSea {
  /// headers: used to store api key from constructor
  Map<String, String> headers = {};

  /// OpenSea : constructor
  /// apiKey: the users api key
  OpenSea(String? apiKey) {
    if (apiKey != null && apiKey.isNotEmpty) {
      headers["X-API-KEY"] = apiKey;
    }
  }

  ///TODO pending API key to do testing
  String getEvents() {
    return "";
  }

  /// getBundles function : async used to retrieve bundles from opensea api
  /// onSale: if set to true, only show bundles currently on sale. If set to false, only show bundles that have been sold or cancelled.
  /// owner: Account address of the owner of a bundle (and all assets within)
  /// assetContractAddress: Contract address of all the assets in a bundle. Only works for homogenous bundles, not mixed ones.
  /// assetContractAddresses: An array of contract addresses to search for (e.g. ?asset_contract_addresses=0x1...&asset_contract_addresses=0x2...). Will return a list of bundles with assets having contracts that match ALL of the addresses in this array. Useful for querying for mixed bundles, e.g. ones with CryptoKitties AND CK Talisman statues.
  /// tokenIds: A list of token IDs for showing only bundles with at least one of the token IDs in the list
  /// limit: For pagination: how many results to return
  /// offset: For pagination: the index of the result to start at (beginning with 0)
  Future<BundlesObject> getBundles(
      bool? onSale,
      String? owner,
      String? assetContractAddress,
      List<String>? assetContractAddresses,
      List<String>? tokenIds,
      String? limit,
      String? offset) async {
    var queryParameters = {
      "token_ids": [],
      "asset_contract_addresses": [],
      "offset": "0",
      "limit": "20"
    };
    if (owner != null && owner.isNotEmpty) {
      queryParameters["owner"] = owner;
    }
    if (onSale != null) {
      queryParameters["on_sale"] = onSale.toString();
    }

    if (offset != null && offset.isNotEmpty) {
      queryParameters["offset"] = offset;
    }
    if (limit != null && limit.isNotEmpty) {
      queryParameters["limit"] = limit;
    }
    if (tokenIds != null) {
      queryParameters["token_ids"] = tokenIds;
    }
    if (assetContractAddress != null) {
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if (assetContractAddresses != null) {
      queryParameters["asset_contract_addresses"] = assetContractAddresses;
    }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/bundles',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);
    return BundlesObject.fromJson(jsonDecode(response.body));
  }

  /// getCollections function : async used to retrieve multiple collections from opensea api
  /// assetOwner: A wallet address. If specified, will return collections where the owner owns at least one asset belonging to smart contracts in the collection. The number of assets the account owns is shown as owned_asset_count for each collection.
  /// offset: For pagination. Number of contracts offset from the beginning of the result list.
  /// limit: For pagination. Maximum number of contracts to return.
  Future<CollectionListObject> getCollections(
      String? assetOwner, String? offset, String? limit) async {
    var queryParameters = {"offset": "0", "limit": "300"};
    if (assetOwner != null && assetOwner.isNotEmpty) {
      queryParameters["asset_owner"] = assetOwner;
    }
    if (offset != null && offset.isNotEmpty) {
      queryParameters["offset"] = offset;
    }
    if (limit != null && limit.isNotEmpty) {
      queryParameters["limit"] = limit;
    }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/collections',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);

    var decode = jsonDecode(response.body);
    if (decode is Map) {
      return CollectionListObject.fromJson(jsonDecode(response.body));
    } else {
      return CollectionListObject.fromJsonList(jsonDecode(response.body));
    }
  }

  /// getCollection function : async used to retrieve a single collection from opensea api
  /// collection: The collection slug of this collection that is used to uniquely link to this collection on OpenSea
  Future<CollectionObject> getCollection(String collection) async {
    var url = Uri.parse('https://api.opensea.io/api/v1/collection/$collection');
    var response = await http.get(url, headers: headers);

    return CollectionObject.fromJson(jsonDecode(response.body));
  }

  /// getAssets function : async used to query different assets based on parameters
  /// owner: The address of the owner of the assets
  /// tokenIds: An array of token IDs to search for (e.g. ?token_ids=1&token_ids=209). Will return a list of assets with token_id matching any of the IDs in this array.
  /// assetContractAddress: The NFT contract address for the assets
  /// assetContractAddresses: An array of contract addresses to search for (e.g. ?asset_contract_addresses=0x1...&asset_contract_addresses=0x2...). Will return a list of assets with contracts matching any of the addresses in this array. If "token_ids" is also specified, then it will only return assets that match each (address, token_id) pairing, respecting order.
  /// orderBy: How to order the assets returned. By default, the API returns the fastest ordering. Options you can set are sale_date (the last sale's transaction's timestamp), sale_count (number of sales), and sale_price (the last sale's total_price)
  /// orderDirection: Can be asc for ascending or desc for descending
  /// offset: offset
  /// limit: Limit. Defaults to 20, capped at 50.
  /// collection: Limit responses to members of a collection. Case sensitive and must match the collection slug exactly. Will return all assets from all contracts in a collection.
  Future<AssetsObject> getAssets(
      String? owner,
      List<String>? tokenIds,
      String? assetContractAddress,
      List<String>? assetContractAddresses,
      String? orderBy,
      String? orderDirection,
      String? offset,
      String? limit,
      String? collection) async {
    var queryParameters = {
      "token_ids": [],
      "asset_contract_addresses": [],
      "limit": "20",
      "offset": "0"
    };
    if (owner != null && owner.isNotEmpty) {
      queryParameters["owner"] = owner;
    }
    if (orderBy != null && orderBy.isNotEmpty) {
      queryParameters["order_by"] = orderBy;
    }
    if (orderDirection != null && orderDirection.isNotEmpty) {
      queryParameters["order_direction"] = orderDirection;
    }
    if (offset != null && offset.isNotEmpty) {
      queryParameters["offset"] = offset;
    }
    if (limit != null && limit.isNotEmpty) {
      queryParameters["limit"] = limit;
    }
    if (tokenIds != null) {
      queryParameters["token_ids"] = tokenIds;
    }
    if (assetContractAddress != null) {
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if (assetContractAddresses != null) {
      queryParameters["asset_contract_addresses"] = assetContractAddresses;
    }
    if (collection != null && collection.isNotEmpty) {
      queryParameters["collection"] = collection;
    }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/assets',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);

    return AssetsObject.fromJson(jsonDecode(response.body));
  }

  /// getAsset function : async used to retrieve a single asset
  /// assetContractAddress: Address of the contract for this NFT
  /// tokenId: Token ID for this item
  /// accountAddress: Address of an owner of the token. If you include this, the response will include an ownership object that includes the number of tokens owned by the address provided instead of the top_ownerships object included in the standard response, which provides the number of tokens owned by each of the 10 addresses with the greatest supply of the token..
  Future<SingleAssetObject> getAsset(String assetContractAddress,
      String tokenId, String? accountAddress) async {
    var queryParameters = <String, dynamic>{};
    if (accountAddress != null && accountAddress.isNotEmpty) {
      queryParameters["account_address"] = accountAddress;
    }

    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/asset/$assetContractAddress/$tokenId/',
      fragment: '',
      queryParameters: queryParameters,
    );
    var response = await http.get(uri, headers: headers);

    return SingleAssetObject.fromJson(jsonDecode(response.body));
  }

  /// getContract function : async used to retrieve a contract from opensea api
  /// assetContractAddress: Address of the contract
  Future<ContractObject> getContract(String assetContractAddress) async {
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/asset_contract/$assetContractAddress/',
      fragment: '',
      queryParameters: null,
    );
    var response = await http.get(uri, headers: headers);
    return ContractObject.fromJson(jsonDecode(response.body));
  }

  /// getCollectionStats function : async used to get the stats of a single collection
  /// slug: the slug of the collection
  Future<Stats> getCollectionStats(String slug) async {
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/collection/$slug/stats',
      fragment: '',
      queryParameters: null,
    );
    var response = await http.get(uri, headers: headers);
    return Stats.fromJson(jsonDecode(response.body)['stats']);
  }
}
