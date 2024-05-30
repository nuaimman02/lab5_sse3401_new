import 'package:flutter/material.dart';
import 'MainPage.dart';

class ActivationCodePage extends StatefulWidget {
  const ActivationCodePage({super.key});

  @override
  State<ActivationCodePage> createState() => _ActivationCodePageState();
}

class _ActivationCodePageState extends State<ActivationCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset('images/UPM_Logo.jpg', height: 100),
          ),
          const SizedBox(height: 20),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Welcome!',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.red.shade50,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Enter the activation code you receive via SMS.',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                      Icon(Icons.info_outline),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'OTP',
                          ),
                          maxLength: 6,
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Didn\'t receive?'),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Tap here',
                          style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage())));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Activate'),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Handle disclaimer tap
            },
            child: const Text(
              'Disclaimer | Privacy Statement',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Copyright UPM & Kejuruteraan Minyak Sawit CCS Sdn. Bhd.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ]),
      ),
    );
  }
}
