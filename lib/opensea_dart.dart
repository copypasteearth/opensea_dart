library opensea_dart;
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';

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
}
