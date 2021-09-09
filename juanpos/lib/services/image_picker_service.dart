import 'package:juanpos/app/app.logger.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final log = getLogger('ImagePickerService');

  final ImagePicker _picker = ImagePicker();

  Future<XFile?> selectImageFromGallery() async{
    try {
      final result = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1280,
        maxHeight: 720,
        imageQuality: 50,
      );
      log.d("result:$result");
      return result;
    } catch (e) {
      log.d("error: $e");
      throw Exception("Error occurred during photo select");
    }
  }

  Future<XFile?> takeImageFromCamera() async{
    try {
      return await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 75,
      );

    } catch (e) {
      throw Exception("Error occurred during photo select");
    }
  }
}