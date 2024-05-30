import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ActivationCodePage.dart';

class AccActivationPage extends StatefulWidget {
  const AccActivationPage({super.key});

  @override
  State<AccActivationPage> createState() => _AccActivationPageState();
}

class _AccActivationPageState extends State<AccActivationPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              elevation: 4.0,
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
                            'Enter your mobile number to activate your account.',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Icon(Icons.info_outline),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Flag_of_Malaysia.svg/1200px-Flag_of_Malaysia.svg.png', // Placeholder for Malaysian flag
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        const Text('+60'),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue;
                            });
                          },
                          activeColor: Colors.blue,
                        ),
                        Text('I agree to the terms & conditions'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivationCodePage())));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text('Get Activation Code'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
