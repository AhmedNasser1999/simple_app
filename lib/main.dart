import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storedata/Screens/home.dart';
import 'package:storedata/data/data_helper.dart';
import 'package:storedata/provider/data_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<DataPrvider>(
        create: (context) => DataPrvider()..showValue(),
        child: const Home(),
      ),
    );
  }
}
