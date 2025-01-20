import 'package:image_picker/image_picker.dart';
import 'dart:io';

class EngineerAttendanceController {
  final ImagePicker _imagePicker = ImagePicker();
  File? imageFile;

  Future<void> captureImage(Function(File?) updateImageCallback) async {
    final XFile? image =
    await _imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      imageFile = File(image.path);
      updateImageCallback(imageFile);
    }
  }
}
