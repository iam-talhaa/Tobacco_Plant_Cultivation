import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'tflite_service.dart';
import 'info_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? image;
  String result = "No prediction yet.";

  Future<void> pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() => image = File(picked.path));
    //  final prediction = await TFLiteService.predictDisease(image!);
     // setState(() => result = prediction);
    }
  }

  @override
  void initState() {
    super.initState();
   // TFLiteService.loadModel();
  }

  @override
  void dispose() {
   // TFLiteService.disposeModel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tobacco Disease Detector'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const InfoScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            if (image != null) Image.file(image!, height: 200),
            ElevatedButton(
              onPressed: () {},
              //onPressed: pickImage,
              child: const Text('Upload Tobacco Leaf Image'),
            ),
            const SizedBox(height: 20),
            Text(result, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
