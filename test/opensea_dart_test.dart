
import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asssetObject;
import 'package:opensea_dart/pojo/collection_object.dart' as collectionObject;

void main() {

    final openSea = OpenSea(null);
    openSea.getCollections("", "100", "5").then((value){
      List<collectionObject.Collection>? collections = value.collections;

      if(collections != null){
        print(collections.length);
        collections.forEach((element) {print(element);});
      }
    });
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
