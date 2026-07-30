import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LightScreen(),
    );
  }
}

class LightScreen extends StatefulWidget {
  const LightScreen({super.key});

  @override
  State<LightScreen> createState() => _LightScreenState();
}

class _LightScreenState extends State<LightScreen> {
  bool isLightOn = false;

  void enableLight() {
    setState(() {
      isLightOn = true;
    });
  }

  void disableLight() {
    setState(() {
      isLightOn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Light Control"),
        backgroundColor: Colors.orange,
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            // Light Icon with Glow
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: isLightOn
                    ? [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.8),
                          blurRadius: 50,
                          spreadRadius: 20,
                        ),
                      ]
                    : [],
              ),
              child: Icon(
                Icons.lightbulb,
                size: 120,
                color: isLightOn ? Colors.yellow : Colors.grey,
              ),
            ),

            const SizedBox(height: 50),

            Text(
              isLightOn ? "Light ON" : "Light OFF",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                // Enable Button
                ElevatedButton.icon(
                  onPressed: enableLight,
                  icon: const Icon(Icons.power),
                  label: const Text("Enable"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),

                const SizedBox(width: 20),

                // Disable Button
                ElevatedButton.icon(
                  onPressed: disableLight,
                  icon: const Icon(Icons.power_off),
                  label: const Text("No"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
