import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_aap/model/transaction.dart';
import 'package:hive_aap/pages/transaction_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  await Hive.initFlutter();
  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>("transactions");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', 
    debugShowCheckedModeBanner: false,
    home: TransactionPage(),
    theme: ThemeData(
      primarySwatch: Colors.pink,
    ));
  }
}
