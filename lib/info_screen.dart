import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tobacco Cultivation Info')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            Text("🌱 Tobacco Cultivation", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Tobacco is a commercial crop grown in warm climates. Key steps include:"),
            Text("1. Land preparation and seed sowing"),
            Text("2. Transplanting seedlings"),
            Text("3. Irrigation and fertilization"),
            Text("4. Disease and pest control"),
            Text("5. Harvesting and curing"),
            SizedBox(height: 20),
            Text("💡 Common Diseases:", style: TextStyle(fontWeight: FontWeight.bold)),
            Text("- Tobacco Mosaic Virus"),
            Text("- Black Shank"),
            Text("- Root Rot"),
          ],
        ),
      ),
    );
  }
}
