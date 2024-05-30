import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'DashboardFactory1.dart';
import 'DashboardFactory2.dart';
import 'main.dart';
import 'InvitationPage.dart';

class EngineerListFactory1 extends StatefulWidget {
  const EngineerListFactory1({super.key});

  @override
  State<EngineerListFactory1> createState() => _EngineerListFactory1State();
}

class _EngineerListFactory1State extends State<EngineerListFactory1> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factory 1'),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildContactCard('Ben', '+60109219938'),
                  buildContactCard('Testing 1', '+601234567891'),
                  buildContactCard('Hello', '+60123456789'),
                ],
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InvitationPage()));
                },
                child: Icon(Icons.add),
                backgroundColor: Colors.purpleAccent,
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildContactCard(String name, String phoneNumber) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.circle, size: 10, color: Colors.grey),
        title: Text(name),
        subtitle: Text(phoneNumber),
      ),
    );
  }
}
