import 'dart:async';

import 'package:flutter/material.dart';
import 'package:social_app_demo/bootstrap.dart';
import 'package:social_app_demo/presentation/screens/app/app.dart';

Future<void> main() async {
  await bootstrap();
  runApp(const SocialApp());
}
