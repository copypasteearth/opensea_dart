
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asssetObject;
import 'package:opensea_dart/pojo/collection_object.dart' as collectionObject;

void main() {

    final openSea = OpenSea();
    openSea.getCollection("doodles-official").then((value){
        collectionObject.Collection? collect = value.collection;
        if(collect != null){
            //print(collect);
        }



    });
    openSea.getAssets("",null,"0x6a01775b369affe2145a0e0be88879dd3cda388f").then((value){
       List<asssetObject.Assets>? assets = value.assets;
       if(assets != null){
           print(assets);
       }

    });


}
