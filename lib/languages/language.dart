import 'package:get/get_navigation/get_navigation.dart';

import 'bn.dart';
import 'en.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': eng,
        'bn_BD': ban,
      };
}
