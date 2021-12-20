
import 'dart:ffi';

import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asssetObject;
import 'package:opensea_dart/pojo/collection_object.dart' as collectionObject;

void main() {

    final openSea = OpenSea(null);
    openSea.getAsset("0xb47e3cd837ddf8e4c57f05d70ab865de6e193bbb", "1", "0xb88f61e6fbda83fbfffabe364112137480398018").then((value)
    {
        print(value);
    });
    /*openSea.getBundles(null, null, null, null, ["1","209"], "2", null).then((value)
    {
      List<asssetObject.Bundles>? bundles = value.bundles;
      if(bundles != null){
        print(bundles);
      }
    });*/
    /*openSea.getCollections("", "100", "5").then((value){
      List<collectionObject.Collection>? collections = value.collections;

      if(collections != null){
        print(collections.length);
        collections.forEach((element) {print(element);});
      }
    });*/
    /*openSea.getCollection("copypasteearth").then((value){
        collectionObject.Collection? collect = value.collection;
        if(collect != null){
            print(collect);
        }



    });*/
    /*openSea.getAssets("",null,null,null,OrderBy.sale_date,OrderDirection.asc,"1","1","doodles-official").then((value){
       List<asssetObject.Assets>? assets = value.assets;
       if(assets != null){
           assets.forEach((element) {print(element.lastSale);});
       }

    });*/


}
