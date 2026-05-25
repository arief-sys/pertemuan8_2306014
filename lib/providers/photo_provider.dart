import 'package:flutter/material.dart';

import '../models/photo_model.dart';
import '../services/photo_service.dart';

class PhotoProvider extends ChangeNotifier {
  List<PhotoModel> photos = [];

  bool isLoading = false;

  String errorMessage = '';

  Future<void> getPhotos() async {
    try {
      isLoading = true;
      notifyListeners();

      photos = await PhotoService.getPhotos();

      errorMessage = '';
    } catch (e) {
      errorMessage = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
