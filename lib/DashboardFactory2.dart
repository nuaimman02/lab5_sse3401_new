import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/cupertino.dart';
import 'DashboardFactory1.dart';
import 'DashboardFactory2.dart';
import 'EngineerListFactory1.dart';
import 'EngineerListFactory2.dart';
import 'SettingsFactory1.dart';
import 'SettingsFactory2.dart';

class DashboardFactory2 extends StatefulWidget {
  const DashboardFactory2({super.key});

  @override
  State<DashboardFactory2> createState() => _DashboardFactory2State();
}

class _DashboardFactory2State extends State<DashboardFactory2> {
  var currentIndex = 1;
  var isActive = true;

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
                child: Column(
                  children: [
                    Text('1549.0 kW', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildGaugeCard('Steam Pressure', 34.19, 'bar', Colors.green),
                          buildGaugeCard('Steam Flow', 22.82, 'T/H', Colors.red)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildGaugeCard('Water Level', 55.41, '%', Colors.green),
                          buildGaugeCard('Power Frequency', 50.08, 'Hz', Colors.green),
                        ],
                      ),
                    ),
                    const Text('2024-05-28 10:08:36')
                  ],
                ),
              ),
              SizedBox(height: 16.0,),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildGaugeCard(String title, double value, String unit, Color color) {
  return Flexible(
    child: Container(
      width: 150,
      height: 200,
      padding: const EdgeInsets.all(1.0),
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
          SizedBox(height: 8),
          Expanded(
            child: SfRadialGauge(
              title: GaugeTitle(text: title),
              axes: [
                RadialAxis(
                  startAngle: 180,
                  endAngle: 0,
                  minimum: 0,
                  maximum: 100,
                  ranges: [
                    GaugeRange(
                      startValue: 0,
                      endValue: value,
                      color: color,
                      startWidth: 10,
                      endWidth: 10,
                    ),
                  ],
                  pointers: [
                    MarkerPointer(value: value),
                  ],
                  annotations: [
                    GaugeAnnotation(
                      widget: Text(
                        '${value.toStringAsFixed(2)} $unit',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      positionFactor: 0.5,
                      angle: 90,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
