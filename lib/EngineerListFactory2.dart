import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DashboardFactory1.dart';
import 'DashboardFactory2.dart';
import 'EngineerListFactory1.dart';
import 'EngineerListFactory2.dart';
import 'SettingsFactory1.dart';
import 'SettingsFactory2.dart';

class EngineerListFactory2 extends StatefulWidget {
  const EngineerListFactory2({super.key});

  @override
  State<EngineerListFactory2> createState() => _EngineerListFactory2State();
}

class _EngineerListFactory2State extends State<EngineerListFactory2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory 2'),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.0,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
