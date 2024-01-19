import 'package:flutter/material.dart';

import 'my_app.dart';
import 'shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceHelper.init();
  runApp(MyApp());
}
