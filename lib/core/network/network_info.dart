import 'dart:io';

Future<void> hasInternetConnection() async {
  try {
    await InternetAddress.lookup('google.com');

    // return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    rethrow;
  }
}
