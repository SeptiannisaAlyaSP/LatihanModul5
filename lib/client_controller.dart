import 'package:appwrite/appwrite.dart';
import 'package:get/get.dart';

class ClientController extends GetxController {
  late Client client;

  @override
  void onInit() {
    super.onInit();

    // Appwrite configuration
    const endpoint =
        "http://10.0.2.2:8080/v1"; // Replace with your Appwrite server endpoint
    const projectID =
        "656df314258a4ca412e2"; // Replace with your Appwrite project ID

    client = Client();
    client.setEndpoint(endpoint).setProject(projectID).setSelfSigned(
        status: true); // Set to true if using self-signed certificates
  }
}
