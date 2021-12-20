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
    if(apiKey != null && !apiKey.isEmpty){
      headers["X-API-KEY"] = apiKey;
    }

  }

  Future<CollectionObject> getCollection(String collection)async{


    var url = Uri.parse('https://api.opensea.io/api/v1/collection/$collection');
    var response = await http.get(url,headers: headers);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    return CollectionObject.fromJson(jsonDecode(response.body));
  }

  Future<AssetsObject> getAssets(String? owner, List<String>? tokenIds, String? asset_contract_address, List<String>? asset_contract_addresses, String? order_by, String? order_direction, String? offset, String? limit, String? collection)async{
    var queryParameters = {"token_ids":[],"asset_contract_addresses":[],"limit":"20","offset":"0"};
  if(owner != null && !owner.isEmpty){
    queryParameters["owner"] = owner;
  }
  if(order_by != null && !order_by.isEmpty){
    queryParameters["order_by"] = order_by;
  }
  if(order_direction != null && !order_direction.isEmpty){
    queryParameters["order_direction"] = order_direction;
  }
  if(offset != null && !offset.isEmpty){
    queryParameters["offset"] = offset;
  }
  if(limit != null && !limit.isEmpty){
    queryParameters["limit"] = limit;
  }
  if(tokenIds != null){
    queryParameters["token_ids"] = tokenIds;
  }
  if(asset_contract_address != null){
    queryParameters["asset_contract_address"] = asset_contract_address;
  }
  if(asset_contract_addresses != null){
    queryParameters["asset_contract_addresses"] = asset_contract_addresses;
  }
  if(collection != null && !collection.isEmpty){
    queryParameters["collection"] = collection;
  }
    var uri = Uri(
      scheme: 'https',
      host: 'api.opensea.io',
      path: '/api/v1/assets',
      fragment: '',
      queryParameters: queryParameters,
    );
  print(uri);

    //var url = Uri.https('https://api.opensea.io',"/api/v1/assets",queryParameters);
    var response = await http.get(uri,headers: headers);
    print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    return AssetsObject.fromJson(jsonDecode(response.body));
  }
}
