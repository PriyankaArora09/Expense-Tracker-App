import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'expenses.dart';

var kDarkColorScheme = Colors.black;

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark(),
        home: Expenses(),
      ),
    );
 // });
}
