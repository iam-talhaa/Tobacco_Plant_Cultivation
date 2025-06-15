// import 'dart:io';
// import 'package:tflite/tflite.dart';

// class TFLiteService {
//   static Future<void> loadModel() async {
//     await Tflite.loadModel(
//       model: 'assets/model/tobacco_model.tflite',
//       labels: 'assets/model/labels.txt',
//     );
//   }

//   static Future<String> predictDisease(File image) async {
//     final recognitions = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 1,
//       threshold: 0.5,
//     );
//     if (recognitions != null && recognitions.isNotEmpty) {
//       return "Prediction: ${recognitions[0]['label']}, Confidence: ${((recognitions[0]['confidence'] as double) * 100).toStringAsFixed(2)}%";
//     } else {
//       return "Could not identify disease.";
//     }
//   }

//   static void disposeModel() {
//     Tflite.close();
//   }
// }
