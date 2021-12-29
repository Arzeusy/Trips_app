import 'package:firebase_storage/firebase_storage.dart';
import 'package:platzi_trips_app/Place/repository/firebase.storage_api.dart';
import 'dart:io';

class FirebaseStorageRepository {
  final _finalStorageAPI = FirebaseStorageAPI();

  Future<UploadTask> uploadFile(String path, File image) => _finalStorageAPI.uploadFile(path, image);

  

}