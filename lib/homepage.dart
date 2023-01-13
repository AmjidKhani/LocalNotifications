import 'package:flutter/material.dart';
import 'package:googlee/Notification_Service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Notification_Services notificationServices = Notification_Services();
  @override
  void initState() {
    super.initState();
    notificationServices.InitializedNotificaton();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  notificationServices.showNotification(
                      "This is a title", 'This is body of notifications');
                },
                child: const Text("Simple Noti")),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    notificationServices.sechuleNotification(
                        "this is sechedule",
                        'This is a sechedule notification');
                  },
                  child: const Text("sechedular Noti"))),
          const SizedBox(
            height: 10,
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    notificationServices.cancelnoti();
                  },
                  child: const Text("Cancel Noti")))
        ],
      ),
    );
  }
}
