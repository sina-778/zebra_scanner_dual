import 'package:flutter/material.dart';
import 'package:zabra_scanner_dual/Views/offline.dart';
import 'package:zabra_scanner_dual/Views/online.dart';

class ModeSelect extends StatefulWidget {
  const ModeSelect({Key? key}) : super(key: key);

  @override
  State<ModeSelect> createState() => _ModeSelectState();
}

class _ModeSelectState extends State<ModeSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OnlineMode()));
                  },
                  child: Text("Online_Mode")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OfflineMode()));
                  },
                  child: Text("Offline_Mode")),
            ],
          ),
        ),
      ),
    );
  }
}
