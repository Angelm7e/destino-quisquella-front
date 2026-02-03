// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationHelper {
//   NotificationHelper._privateConstructor();

//   static final NotificationHelper _instance =
//       NotificationHelper._privateConstructor();

//   factory NotificationHelper() {
//     return _instance;
//   }

//   final FlutterLocalNotificationsPlugin _notificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   bool _isInitialized = false;

//   Future<void> initNotifications() async {
//     if (_isInitialized) return;

//     const androidSettings =
//         AndroidInitializationSettings('@mipmap/ic_launcher');
//     const iosSettings = DarwinInitializationSettings(
//       requestAlertPermission: true,
//       requestBadgePermission: true,
//       requestSoundPermission: true,
//     );

//     const initSettings = InitializationSettings(
//       android: androidSettings,
//       iOS: iosSettings,
//     );

//     await _notificationsPlugin.initialize(initSettings);
//     _isInitialized = true;
//   }

//   NotificationDetails _defaultNotificationDetails() {
//     return const NotificationDetails(
//       android: AndroidNotificationDetails(
//         'channel_id',
//         'channel_name',
//         // icon: ,
//         channelDescription: 'channel_description',
//         importance: Importance.high,
//         priority: Priority.high,
//       ),
//       iOS: DarwinNotificationDetails(),
//     );
//   }

//   Future<void> showNotification({
//     int id = 0,
//     String? title = 'Notificación',
//     String? message = 'Tienes un nuevo mensaje',
//   }) async {
//     if (!_isInitialized) await initNotifications();
//     await _notificationsPlugin.show(
//       id,
//       title,
//       message,
//       _defaultNotificationDetails(),
//     );
//   }
// }
