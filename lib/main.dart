import 'package:flutter/material.dart';
import 'package:modern_user_profile_collection_flutter/user_profile/profile_one.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileOne(),
    );
  }
}
