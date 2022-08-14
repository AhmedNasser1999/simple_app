import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storedata/data/data_helper.dart';
import 'package:storedata/provider/data_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            initialValue: Provider.of<DataPrvider>(context).name,
            onChanged: (nameVal) {
              Provider.of<DataPrvider>(context).asignValue(nameVal);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20.0),
          MaterialButton(
            color: Colors.indigo,
            textColor: Colors.white,
            onPressed: () async {
              await UserSimplePreferences.setData(
                Provider.of<DataPrvider>(context).name,
              );
            },
            child: const Text('Save'),
          )
        ],
      ),
    );
  }
}
