import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FFirebaseStorageServices extends GetxController {
  static FFirebaseStorageServices get instance => Get.find();
  final _firebaseStorage = FirebaseStorage.instance;

  //upload local asset from IDE

//return Uint8 list containing image
  Future<Uint8List> getImageDataFromAssets(String path) async {
    try {
      final byteData = await rootBundle.load(path);
      final imageData = byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes);
      return imageData;
    } catch (e) {
      throw 'Error loading image data';
    }
  }

  //upload image using imagedata on firebase storage
  //return download url og uploaded image
  Future<String> uploadImageData(
      String path, Uint8List image, String name) async {
    try {
      final ref = _firebaseStorage.ref(path).child(name);
      await ref.putData(image);
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception: ${e.message}';
      } else {
        throw 'Something went wrong. Please try again later';
      }
    }
  }

  //upload image using imagedata on firebase storage
  //return download url og uploaded image
  Future<String> uploadImageFile(String path, XFile image) async {
    try {
      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return url;
    } catch (e) {
      if (e is FirebaseException) {
        throw 'Firebase Exception: ${e.message}';
      } else if (e is SocketException) {
        throw 'Network Error: ${e.message}';
      } else if (e is PlatformException) {
        throw 'Platform Exception: ${e.message}';
      } else {
        throw 'Something went wrong. Please try again later';
      }
    }
  }
}
// Commit at 2023-08-13 12:04:14
// Commit at 2023-11-18 13:10:08
// Commit at 2023-12-04 17:13:40
// Commit at 2023-08-08 10:28:11
// Commit at 2023-04-27 13:15:47
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
// Random commit
Random commit
