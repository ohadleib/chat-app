import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    return android;
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDldS3dyqSnd3F5jYZrIon-k8fMjUx8n6s',
    appId: '1:670196376100:android:9fa5c1dcf10e48d5676eb1',
    messagingSenderId: '670196376100',
    projectId: 'justachat-96e7d',
    storageBucket: 'justachat-96e7d.appspot.com',
  );
}
