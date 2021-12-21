import 'package:opensea_dart/opensea_dart.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final openSea = OpenSea(null);
  test("getting a single collection", () {
    openSea.getCollection("copypasteearth").then((value) {
      expect(() => value.collection != null, throwsAssertionError);
    });
  });
}
