library opensea_dart;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';
import 'package:opensea_dart/pojo/contract_object.dart';
import 'package:opensea_dart/pojo/event_object.dart';
import 'package:opensea_dart/pojo/orders_object.dart';
import 'package:opensea_dart/pojo/single_asset_object.dart';

/// OpenSea class
/// the entry point for the package
/// constructor takes a String apiKey
class OpenSea {
  /// Host to use
  String host = 'api.opensea.io';

  /// headers: used to store api key from constructor
  Map<String, String> headers = {};
  bool apiKeyProvided = false;

  /// OpenSea : constructor
  /// apiKey: the users api key
  OpenSea(String? apiKey, {testNet = false}) {
    if (testNet) {
      host = 'testnets-api.opensea.io';
    }
    if (apiKey != null && apiKey.isNotEmpty) {
      headers["X-API-KEY"] = apiKey;
      apiKeyProvided = true;
    }
  }

  /// getOrders function : async How to fetch orders from the OpenSea system(requires apiKey)
  /// assetContractAddress: Filter by smart contract address for the asset category. Needs to be defined together with token_id or token_ids.
  /// paymentTokenAddress: Filter by the address of the smart contract of the payment token that is accepted or offered by the order
  /// maker: Filter by the order maker's wallet address
  /// taker: Filter by the order taker's wallet address. Orders open for any taker have the null address as their taker.
  /// owner: Filter by the asset owner's wallet address
  /// isEnglish: When "true", only show English Auction sell orders, which wait for the highest bidder. When "false", exclude those.
  /// bundled: Only show orders for bundles of assets
  /// includeBundled: Include orders on bundles where all assets in the bundle share the address provided in asset_contract_address or where the bundle's maker is the address provided in owner
  /// listedAfter: Only show orders listed after this timestamp. Seconds since the Unix epoch.
  /// listedBefore: Only show orders listed before this timestamp. Seconds since the Unix epoch.
  /// tokenId: Filter by the token ID of the order's asset. Needs to be defined together with asset_contract_address.
  /// tokenIds: Filter by a list of token IDs for the order's asset. Needs to be defined together with asset_contract_address.
  /// side: Filter by the side of the order. 0 for buy orders and 1 for sell orders.
  /// saleKind: Filter by the kind of sell order. 0 for fixed-price sales or min-bid auctions, and 1 for declining-price Dutch Auctions. NOTE: use only_english=true for filtering for only English Auctions
  /// limit: Number of orders to return (capped at 50).
  /// offset: Number of orders to offset by (for pagination)
  /// orderBy: How to sort the orders. Can be created_date for when they were made, or eth_price to see the lowest-priced orders first (converted to their ETH values). eth_price is only supported when asset_contract_address and token_id are also defined.
  /// orderDirection: Can be asc or desc for ascending or descending sort. For example, to see the cheapest orders, do order_direction asc and order_by eth_price.
  Future<OrdersObject> getOrders(
      {String? assetContractAddress,
      String? paymentTokenAddress,
      String? maker,
      String? taker,
      String? owner,
      bool? isEnglish,
      bool? bundled,
      bool? includeBundled,
      DateTime? listedAfter,
      DateTime? listedBefore,
      String? tokenId,
      List<String>? tokenIds,
      String? side,
      String? saleKind,
      String? limit,
      String? offset,
      String? orderBy,
      String? orderDirection}) async {
    var queryParameters = {
      "token_ids": [],
      "offset": "0",
      "limit": "20",
      "order_direction": "desc",
      "order_by": "created_date",
      "bundled": false.toString(),
      "include_bundled": false.toString(),
    };
    if (assetContractAddress != null && assetContractAddress.isNotEmpty) {
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if (paymentTokenAddress != null && paymentTokenAddress.isNotEmpty) {
      queryParameters["payment_token_address"] = paymentTokenAddress;
    }
    if (maker != null && maker.isNotEmpty) {
      queryParameters["maker"] = maker;
    }
    if (taker != null && taker.isNotEmpty) {
      queryParameters["taker"] = taker;
    }
    if (owner != null && owner.isNotEmpty) {
      queryParameters["owner"] = owner;
    }
    if (isEnglish != null) {
      queryParameters["is_english"] = isEnglish.toString();
    }
    if (bundled != null) {
      queryParameters["bundled"] = bundled.toString();
    }
    if (includeBundled != null) {
      queryParameters["include_bundled"] = includeBundled.toString();
    }
    if (listedAfter != null) {
      queryParameters["listed_after"] = listedAfter.toIso8601String();
    }
    if (listedBefore != null) {
      queryParameters["listed_before"] = listedBefore.toIso8601String();
    }
    if (tokenId != null && tokenId.isNotEmpty) {
      queryParameters["token_id"] = tokenId;
    }
    if (tokenIds != null) {
      queryParameters["token_ids"] = tokenIds;
    }
    if (side != null && side.isNotEmpty) {
      queryParameters["side"] = side;
    }
    if (saleKind != null && saleKind.isNotEmpty) {
      queryParameters["sale_kind"] = saleKind;
    }
    if (offset != null && offset.isNotEmpty) {
      queryParameters["offset"] = offset;
    }
    if (limit != null && limit.isNotEmpty) {
      queryParameters["limit"] = limit;
    }
    if (orderBy != null && orderBy.isNotEmpty) {
      queryParameters["order_by"] = orderBy;
    }
    if (orderDirection != null && orderDirection.isNotEmpty) {
      queryParameters["order_direction"] = orderDirection;
    }
    var uri = Uri(
      scheme: 'https',
      host: host,
      path: 'wyvern/v1/orders',
      fragment: null,
      queryParameters: queryParameters,
    );
    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return OrdersObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }

  /// getEvents function : async retrieve events from opensea api (requires apiKey)
  /// assetContractAddress: The NFT contract address for the assets for which to show events
  /// collectionSlug: Limit responses to events from a collection. Case sensitive and must match the collection slug exactly. Will return all assets from all contracts in a collection.
  /// tokenId: The token's id to optionally filter by
  /// accountAddress: A user account's wallet address to filter for events on an account
  /// eventType: The event type to filter. Can be created for new auctions, successful for sales, cancelled, bid_entered, bid_withdrawn, transfer, or approve
  /// onlyOpenSea: Restrict to events on OpenSea auctions. Can be true or false
  /// auctionType: Filter by an auction type. Can be english for English Auctions, dutch for fixed-price and declining-price sell orders (Dutch Auctions), or min-price for CryptoPunks bidding auctions.
  /// limit: For pagination: how many results to return
  /// offset: For pagination: the index of the result to start at (beginning with 0)
  /// occurredBefore: Only show events listed before this timestamp. Seconds since the Unix epoch.
  /// occurredAfter: Only show events listed after this timestamp. Seconds since the Unix epoch.
  Future<EventObject> getEvents(
      {String? assetContractAddress,
      String? collectionSlug,
      String? tokenId,
      String? accountAddress,
      String? eventType,
      bool? onlyOpenSea = false,
      String? auctionType,
      String? limit,
      String? offset,
      DateTime? occurredBefore,
      DateTime? occurredAfter}) async {
    var queryParameters = {
      "offset": "0",
      "limit": "20",
      "only_opensea": onlyOpenSea.toString(),
    };
    if (assetContractAddress != null && assetContractAddress.isNotEmpty) {
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if (collectionSlug != null && collectionSlug.isNotEmpty) {
      queryParameters["collection_slug"] = collectionSlug;
    }
    if (tokenId != null && tokenId.isNotEmpty) {
      queryParameters["token_id"] = tokenId;
    }
    if (accountAddress != null && accountAddress.isNotEmpty) {
      queryParameters["account_address"] = accountAddress;
    }
    if (eventType != null && eventType.isNotEmpty) {
      queryParameters["event_type"] = eventType;
    }
    if (auctionType != null && auctionType.isNotEmpty) {
      queryParameters["auction_type"] = auctionType;
    }
    if (offset != null && offset.isNotEmpty) {
      queryParameters["offset"] = offset;
    }
    if (limit != null && limit.isNotEmpty) {
      queryParameters["limit"] = limit;
    }
    if (occurredBefore != null) {
      queryParameters['occurred_before'] = occurredBefore.toIso8601String();
    }
    if (occurredAfter != null) {
      queryParameters['occurred_after'] = occurredAfter.toIso8601String();
    }
    var uri = Uri(
      scheme: 'https',
      host: host,
      path: '/api/v1/events',
      fragment: null,
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return EventObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
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
      {bool? onSale,
      String? owner,
      String? assetContractAddress,
      List<String>? assetContractAddresses,
      List<String>? tokenIds,
      String? limit,
      String? offset}) async {
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
    if (assetContractAddress != null && assetContractAddress.isNotEmpty) {
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if (assetContractAddresses != null) {
      queryParameters["asset_contract_addresses"] = assetContractAddresses;
    }
    var uri = Uri(
      scheme: 'https',
      host: host,
      path: '/api/v1/bundles',
      fragment: null,
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return BundlesObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }

  /// getCollections function : async used to retrieve multiple collections from opensea api
  /// assetOwner: A wallet address. If specified, will return collections where the owner owns at least one asset belonging to smart contracts in the collection. The number of assets the account owns is shown as owned_asset_count for each collection.
  /// offset: For pagination. Number of contracts offset from the beginning of the result list.
  /// limit: For pagination. Maximum number of contracts to return.
  Future<CollectionListObject> getCollections(
      {String? assetOwner, String? offset, String? limit}) async {
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
      host: host,
      path: '/api/v1/collections',
      fragment: null,
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
    var url = Uri(
        scheme: 'https',
        host: host,
        path: '/api/v1/collection/$collection',
        fragment: null,
        queryParameters: null,
    );
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      return CollectionObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
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
      {String? owner,
      List<String>? tokenIds,
      String? assetContractAddress,
      List<String>? assetContractAddresses,
      String? orderBy,
      String? orderDirection,
      String? offset,
      String? limit,
      String? collection}) async {
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
      host: host,
      path: '/api/v1/assets',
      fragment: null,
      queryParameters: queryParameters,
    );

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return AssetsObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }

  /// getAsset function : async used to retrieve a single asset
  /// assetContractAddress: Address of the contract for this NFT
  /// tokenId: Token ID for this item
  /// accountAddress: Address of an owner of the token. If you include this, the response will include an ownership object that includes the number of tokens owned by the address provided instead of the top_ownerships object included in the standard response, which provides the number of tokens owned by each of the 10 addresses with the greatest supply of the token..
  Future<SingleAssetObject> getAsset(
      {required String assetContractAddress,
      required String tokenId,
      String? accountAddress}) async {
    var queryParameters = <String, dynamic>{};
    if (accountAddress != null && accountAddress.isNotEmpty) {
      queryParameters["account_address"] = accountAddress;
    }

    var uri = Uri(
      scheme: 'https',
      host: host,
      path: '/api/v1/asset/$assetContractAddress/$tokenId/',
      fragment: null,
      queryParameters: queryParameters,
    );
    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return SingleAssetObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }

  /// getContract function : async used to retrieve a contract from opensea api
  /// assetContractAddress: Address of the contract
  Future<ContractObject> getContract(
      {required String assetContractAddress}) async {
    var uri = Uri(
      scheme: 'https',
      host: host,
      path: '/api/v1/asset_contract/$assetContractAddress/',
      fragment: null,
      queryParameters: null,
    );
    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      return ContractObject.fromJson(jsonDecode(response.body));
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }

  /// getCollectionStats function : async used to get the stats of a single collection
  /// slug: the slug of the collection
  Future<Stats> getCollectionStats({required String slug}) async {
    var uri = Uri(
      scheme: 'https',
      host: host,
      path: '/api/v1/collection/$slug/stats',
      fragment: null,
      queryParameters: null,
    );
    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)['stats'];
      return res == null
          ? Stats()
          : Stats.fromJson(jsonDecode(response.body)['stats']);
    }
    if (response.statusCode == 403 && !apiKeyProvided) {
      throw Exception('You must provide an API key for this request!');
    }
    throw Exception(
        "Opensea returned HTTP ${response.statusCode}!\n${response.body}");
  }
}
