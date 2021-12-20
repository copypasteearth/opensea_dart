library opensea_dart;
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:opensea_dart/pojo/assets_object.dart';
import 'package:opensea_dart/pojo/collection_object.dart';

/// A Calculator.
class OpenSea {
  /// Returns [value] plus 1.
  Future<CollectionObject> getCollection(String collection)async{


    var url = Uri.parse('https://api.opensea.io/api/v1/collection/$collection');
    var response = await http.get(url);
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

    return CollectionObject.fromJson(jsonDecode(response.body));
  }
  //TODO working on parameters to this function
  Future<AssetsObject> getAssets(String? owner, List<String>? tokenIds, String? asset_contract_address)async{
    var queryParameters = {"token_ids":[],"order_direction":"desc",
    "limit": "20"};
  if(owner != null && !owner.isEmpty){
    queryParameters["owner"] = owner;
  }
  if(tokenIds != null){
    queryParameters["token_ids"] = tokenIds;
  }
  if(asset_contract_address != null){
    queryParameters["asset_contract_address"] = asset_contract_address;
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
    var response = await http.get(uri);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return AssetsObject.fromJson(jsonDecode(response.body));
  }
}
