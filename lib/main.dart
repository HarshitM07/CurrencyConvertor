import 'package:currency_convertor/currency_convertor_cupertino_page.dart';
import 'package:currency_convertor/currency_convertor_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//types of widgets
//1 stateless widget means the state which is being shown on the screen is immutable
//2 stateful widget means the state is mutable

//state is the data thw widget has been showing on the screen
//
// material design and cupertino design
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConvertorMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CurrencyConvertorCupertinoPage(),
    );
  }
}
