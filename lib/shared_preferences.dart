// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesPage  extends StatefulWidget {
  const SharedPreferencesPage({super.key});

  @override
  State<SharedPreferencesPage> createState() => _SharedPreferencesPageState();
}

class _SharedPreferencesPageState extends State<SharedPreferencesPage> {

  SharedPreferences? preferences;
  bool? deger;
  String? deger2;
  double? deger3;



  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text('Shared Preferences'),
      ), body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                var deger = preferences!.setBool('ourBool',true);
                print(deger);
              },child: const Text('Set Value')),
              ElevatedButton(onPressed: (){
               setState(() {
                 preferences!.getBool('ourBool');

               });
              }, child: const Text('Get Value')),
              Text(deger != null ? deger.toString() :'Bos'),
            ],
          ),
        ),
      );
    }
  }