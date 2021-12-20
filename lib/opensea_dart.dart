library opensea_dart;
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';
import 'package:opensea_dart/pojo/contract_object.dart';
import 'package:opensea_dart/pojo/single_asset_object.dart';

/// A Calculator.
class OpenSea {
  Map<String, String>  headers = {

  };
  OpenSea(String? apiKey){
    if(apiKey != null && apiKey.isNotEmpty){
      headers["X-API-KEY"] = apiKey;
    }

  }
  ///TODO pending API key to do testing
  String getEvents(){
    return "";
  }
  Future<BundlesObject> getBundles(bool? onSale, String? owner, String? assetContractAddress, List<String>? assetContractAddresses, List<String>? tokenIds, String? limit, String? offset)async{
    var queryParameters = {"token_ids":[],"asset_contract_addresses":[],"offset":"0","limit":"20"};
    if(owner != null && owner.isNotEmpty){
      queryParameters["owner"] = owner;
    }
    if(onSale != null){
      queryParameters["on_sale"] = onSale.toString();
    }

    if(offset != null && offset.isNotEmpty){
      queryParameters["offset"] = offset;
    }
    if(limit != null && limit.isNotEmpty){
      queryParameters["limit"] = limit;
    }
    if(tokenIds != null){
      queryParameters["token_ids"] = tokenIds;
    }
    if(assetContractAddress != null){
      queryParameters["asset_contract_address"] = assetContractAddress;
    }
    if(assetContractAddresses != null){
      queryParameters["asset_contract_addresses"] = assetContractAddresses;
    }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/bundles',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri,headers: headers);
    return BundlesObject.fromJson(jsonDecode(response.body));

  }
  Future<CollectionListObject> getCollections(String? assetOwner, String? offset, String? limit)async{
    var queryParameters = {"offset":"0","limit":"300"};
    if(assetOwner != null && assetOwner.isNotEmpty){
      queryParameters["asset_owner"] = assetOwner;
    }
    if(offset != null && offset.isNotEmpty){
      queryParameters["offset"] = offset;
    }
    if(limit != null && limit.isNotEmpty){
      queryParameters["limit"] = limit;
    }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/collections',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri,headers: headers);

    var decode = jsonDecode(response.body);
    if(decode is Map){
      print("making map version");
      return CollectionListObject.fromJson(jsonDecode(response.body));
    }else{
      print("making list version");
      return CollectionListObject.fromJsonList(jsonDecode(response.body));
    }

  }
  Future<CollectionObject> getCollection(String collection)async{

    var url = Uri.parse('https://api.opensea.io/api/v1/collection/$collection');
    var response = await http.get(url,headers: headers);
    //print(response.statusCode);
    //print(response.body);

    return CollectionObject.fromJson(jsonDecode(response.body));
  }

  Future<AssetsObject> getAssets(String? owner, List<String>? tokenIds, String? assetContractAddress, List<String>? assetContractAddresses, String? orderBy, String? orderDirection, String? offset, String? limit, String? collection)async{
    var queryParameters = {"token_ids":[],"asset_contract_addresses":[],"limit":"20","offset":"0"};
  if(owner != null && owner.isNotEmpty){
    queryParameters["owner"] = owner;
  }
  if(orderBy != null && orderBy.isNotEmpty){
    queryParameters["order_by"] = orderBy;
  }
  if(orderDirection != null && orderDirection.isNotEmpty){
    queryParameters["order_direction"] = orderDirection;
  }
  if(offset != null && offset.isNotEmpty){
    queryParameters["offset"] = offset;
  }
  if(limit != null && limit.isNotEmpty){
    queryParameters["limit"] = limit;
  }
  if(tokenIds != null){
    queryParameters["token_ids"] = tokenIds;
  }
  if(assetContractAddress != null){
    queryParameters["asset_contract_address"] = assetContractAddress;
  }
  if(assetContractAddresses != null){
    queryParameters["asset_contract_addresses"] = assetContractAddresses;
  }
  if(collection != null && collection.isNotEmpty){
    queryParameters["collection"] = collection;
  }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/assets',
      fragment: '',
      queryParameters: queryParameters,
    );

    var response = await http.get(uri,headers: headers);

    return AssetsObject.fromJson(jsonDecode(response.body));
  }
  Future<SingleAssetObject> getAsset(String assetContractAddress, String tokenId, String? accountAddress)async{
    var queryParameters = <String,dynamic>{};
    if(accountAddress != null && accountAddress.isNotEmpty){
      queryParameters["account_address"] = accountAddress;
    }

    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/asset/$assetContractAddress/$tokenId/',
      fragment: '',
      queryParameters: queryParameters,
    );
    var response = await http.get(uri,headers: headers);
    //print(response.body);
    return SingleAssetObject.fromJson(jsonDecode(response.body));
  }
  Future<ContractObject> getContract(String assetContractAddress)async{
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/asset_contract/$assetContractAddress/',
      fragment: '',
      queryParameters: null,
    );
    var response = await http.get(uri,headers: headers);
    return ContractObject.fromJson(jsonDecode(response.body));
  }
  Future<Stats> getCollectionStats(String slug)async{
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/collection/$slug/stats',
      fragment: '',
      queryParameters: null,
    );
    var response = await http.get(uri,headers: headers);
    return Stats.fromJson(jsonDecode(response.body)['stats']);
  }
}
