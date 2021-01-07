import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_app_demo/presentation/screens/app/app.dart';

import 'data/net/api/api_impl.dart';

Future<void> main() async {
  await _init();
  runApp(SocialApp());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  ApiImpl.init();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}
