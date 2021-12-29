import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';


class FirebaseStorageAPI {
  final Reference _storageReference = FirebaseStorage.instance.ref();
  
  Future<UploadTask> uploadFile(String path, File image) async {

    return Future.value(_storageReference.child(path).putFile(image));
    
  }

}