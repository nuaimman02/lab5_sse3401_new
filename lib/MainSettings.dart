import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DashboardFactory1.dart';
import 'DashboardFactory2.dart';
import 'EngineerListFactory1.dart';
import 'EngineerListFactory2.dart';
import 'SettingsFactory1.dart';
import 'SettingsFactory2.dart';

class MainSettings extends StatefulWidget {
  const MainSettings({super.key});

  @override
  State<MainSettings> createState() => _MainSettingsState();
}

class _MainSettingsState extends State<MainSettings> {
  var settingsIndex = 0;

  static const List<Widget> pages = <Widget>[
    SettingsFactory1(),
    SettingsFactory2(),
  ];

  void _onItemPressed(int index) {
    setState(() {
      settingsIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Expanded(child: pages[settingsIndex]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildFactoryButton(context, 'Factory 1', 0, settingsIndex == 0),
                  buildFactoryButton(context, 'Factory 2', 1, settingsIndex == 1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFactoryButton(
      BuildContext context, String label, int index, bool isActive) {
    return ElevatedButton.icon(
      onPressed: () => _onItemPressed(index),
      icon: Icon(Icons.factory),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: isActive
            ? Colors.blue
            : Colors.white, // Change color based on active state
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: isActive ? Colors.blue : Colors.transparent),
        ),
      ),
    );
  }
}
