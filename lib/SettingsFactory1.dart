import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DashboardFactory1.dart';
import 'DashboardFactory2.dart';
import 'EngineerListFactory1.dart';
import 'EngineerListFactory2.dart';
import 'SettingsFactory1.dart';
import 'SettingsFactory2.dart';

class SettingsFactory1 extends StatefulWidget {
  const SettingsFactory1({super.key});

  @override
  State<SettingsFactory1> createState() => _SettingsFactory1State();
}

class _SettingsFactory1State extends State<SettingsFactory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory 1'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Minimum Threshold',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.info_outline),
                          SizedBox(width: 8),
                          Icon(Icons.edit, color: Colors.purple),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildMetricCard('Steam Pressure', '29', 'bar'),
                      buildMetricCard('Steam Flow', '22', 'T/H'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildMetricCard('Water Level', '53', '%'),
                      buildMetricCard('Power Frequency', '48', 'Hz'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildMetricCard(String title, String value, String unit) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(12),
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Text(
                value,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(unit, style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ],
    );
  }
}
