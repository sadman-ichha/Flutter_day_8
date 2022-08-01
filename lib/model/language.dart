import 'package:get/get.dart';
import '../language/bangla.dart';
import '../language/english.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": eng,
        "bn_BD": ban,
      };
}
