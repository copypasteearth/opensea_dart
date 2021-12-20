import 'package:opensea_dart/enums/enums.dart';
import 'package:opensea_dart/opensea_dart.dart';
import 'package:opensea_dart/pojo/assets_object.dart' as asset_object;
import 'package:opensea_dart/pojo/collection_object.dart' as collection_object;
import 'package:flutter_test/flutter_test.dart';

void main() {
  final openSea = OpenSea(null);
  test("getting a single collection",(){
    openSea.getCollection("copypasteearth").then((value){
      expect(() => value != null, throwsAssertionError);
    });
  });
}
