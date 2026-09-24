import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices{
  FirebaseMessaging messaging=FirebaseMessaging.instance;

  Future<void> getFCMToken() async{
    NotificationSettings settings=await messaging.requestPermission(

      alert:true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert:true,
      provisional:true,
      sound:true,
    );

    if(settings.authorizationStatus==AuthorizationStatus.authorized){
      print("User Granted permission");
    }else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      print("User Granted Provisional Permission");
    }else{
      print("User Denied Permission");
    }

    String? token = await messaging.getToken();

    print("FCM Token: $token");

  }
}