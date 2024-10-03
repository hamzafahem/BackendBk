// lib/class_builder.dart

import 'package:commupro1/screens/account_screen.dart';
import 'package:commupro1/pages/home.dart';


class ClassBuilder {
  static final Map<String, Type> _classMap = {
    'Home': Home,
    'Settings': AccountScreen,
  };

  static void registerClasses() {
    // No-op. Just here to force file inclusion
  }

  static Type? fromString(String typeName) {
    return _classMap[typeName];
  }
}
