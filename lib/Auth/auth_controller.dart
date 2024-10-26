import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:todo_app/controllers/network_controller.dart';

class AuthController extends GetxController {
  final NetworkController _networkController = Get.find<NetworkController>();

  Future<void> signInWithGoogle() async {
    UserCredential userCredential =
        await _networkController.signInWithGoogle();
    if (userCredential.user != null) {
      Get.offAllNamed('/posts');
    }
  }
}
