import 'dart:developer';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddScreenController extends GetxController {
  RxList<XFile> images = <XFile>[].obs;

  final ImagePicker _picker = ImagePicker();
  Future captureImage() async {
    // Capture a photo
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
    if(photo != null) {
      images.insert(0, photo);
    }   
    log(images.toString());
  }

  Future galleryImages() async {
    // Capture a photo
    final List<XFile>? selectedImages = await _picker.pickMultiImage();
    if(selectedImages != null) {
      for (var element in selectedImages!) {
      images.add(element);
    }
    }
    
    log(images.toString());
    log(selectedImages.toString());
  }
}
