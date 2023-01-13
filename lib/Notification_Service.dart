import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notification_Services {
  //Initilizaing Plugin making instance

  FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

//Initilizaing Platform Specific setthings

  final AndroidInitializationSettings _androidInitializationSettings =
      AndroidInitializationSettings('logo');

  //Methode to Initilized the Notifications

  void InitializedNotificaton() async {
    //Initilization of Andriod Notifications

    final InitializationSettings initializationSettings =
        InitializationSettings(android: _androidInitializationSettings);
    await _notificationsPlugin.initialize(initializationSettings);
  }

  void showNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channelId', 'channelName',
            priority: Priority.high, importance: Importance.max);
    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await _notificationsPlugin.show(0, title, body, notificationDetails);
  }

  //sechedule notification Of Every Minute

  void sechuleNotification(String title, String body) async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails('channelId', 'channelName',
            priority: Priority.high, importance: Importance.max);
    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await _notificationsPlugin.periodicallyShow(
        1, title, body, RepeatInterval.everyMinute, notificationDetails);
  }

  void cancelnoti() async {
    _notificationsPlugin.cancel(0);
  }
}
