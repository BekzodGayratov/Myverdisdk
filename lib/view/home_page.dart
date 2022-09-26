import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const platform = const MethodChannel('com.unisoft.myverdisdk');
  

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
