// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:local_auth/error_codes.dart' as auth_error;
// import 'package:local_auth_android/local_auth_android.dart';
// import 'package:local_auth_darwin/local_auth_darwin.dart';
// import 'package:flutter/services.dart';

// class BiometricUtils {
//   static const String _biometricWelcomeShownKey = 'biometric_welcome_shown';

//   /// Verifica si la pantalla de bienvenida biométrica ya fue mostrada
//   static Future<bool> hasBiometricWelcomeBeenShown() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool(_biometricWelcomeShownKey) ?? false;
//   }

//   /// Marca que la pantalla de bienvenida biométrica fue mostrada
//   static Future<void> markBiometricWelcomeAsShown() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool(_biometricWelcomeShownKey, true);
//   }

//   /// Verifica si la autenticación biométrica está habilitada (usando la misma lógica del drawer)
//   static Future<bool> isBiometricEnabled() async {
//     final prefs = await SharedPreferences.getInstance();
//     String? val = prefs.getString(CacheAccess.biometricAccessStatus);
//     String? date = prefs.getString(CacheAccess.biometricAccessStatusChangeDate);

//     if (val == null || date == null) {
//       return false;
//     }

//     DateTime fechaActual = DateTime.now();
//     DateTime fechaRecordada = DateTime.parse(date);
//     bool esValida = fechaActual.difference(fechaRecordada).inDays <= 30;

//     return esValida && val == 'true';
//   }

//   /// Habilita la autenticación biométrica (usando la misma lógica del drawer)
//   static Future<void> enableBiometric() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(CacheAccess.biometricAccessStatus, 'true');
//     await prefs.setString(
//       CacheAccess.biometricAccessStatusChangeDate,
//       DateTime.now().toString(),
//     );
//   }

//   /// Deshabilita la autenticación biométrica (usando la misma lógica del drawer)
//   static Future<void> disableBiometric() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString(CacheAccess.biometricAccessStatus, 'false');
//     await prefs.setString(
//       CacheAccess.biometricAccessStatusChangeDate,
//       DateTime.now().toString(),
//     );
//   }

//   /// Verifica si la biometría está disponible en el dispositivo (sin autenticación)
//   static Future<bool> isBiometricAvailable() async {
//     final LocalAuthentication auth = LocalAuthentication();
//     final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
//     final bool canAuthenticate =
//         canAuthenticateWithBiometrics || await auth.isDeviceSupported();

//     if (!canAuthenticateWithBiometrics || !canAuthenticate) {
//       return false;
//     }

//     final List<BiometricType> availableBiometrics = await auth
//         .getAvailableBiometrics();
//     return availableBiometrics.isNotEmpty;
//   }

//   /// Verifica si se puede usar biometría (copiado del drawer para mantener consistencia)
//   static Future<bool> canUseBiometric() async {
//     final LocalAuthentication auth = LocalAuthentication();
//     final bool canAuthenticateWithBiometrics = await auth.canCheckBiometrics;
//     final bool canAuthenticate =
//         canAuthenticateWithBiometrics || await auth.isDeviceSupported();
//     if (!canAuthenticateWithBiometrics || !canAuthenticate) {
//       return false;
//     }
//     final List<BiometricType> availableBiometrics = await auth
//         .getAvailableBiometrics();

//     if (availableBiometrics.isNotEmpty) {
//       if (availableBiometrics.contains(BiometricType.strong) ||
//           availableBiometrics.contains(BiometricType.face) ||
//           availableBiometrics.contains(BiometricType.weak)) {
//         try {
//           final bool didAuthenticate = await auth.authenticate(
//             localizedReason: 'Please authenticate to validate',
//             authMessages: <AuthMessages>[
//               const AndroidAuthMessages(
//                 signInTitle:
//                     'Autenticacion biometrica requerida la verificacion!',
//                 cancelButton: 'Cancelar',
//               ),
//               const IOSAuthMessages(cancelButton: 'Cancelar'),
//             ],
//             options: const AuthenticationOptions(
//               useErrorDialogs: false,
//               biometricOnly: true,
//               sensitiveTransaction: true,
//               stickyAuth: true,
//             ),
//           );
//           return didAuthenticate;
//         } on PlatformException catch (e) {
//           if (e.code == auth_error.notAvailable) {
//             return false;
//           } else if (e.code == auth_error.notEnrolled) {
//             return false;
//           } else {
//             return false;
//           }
//         }
//       }
//       return false;
//     }
//     return false;
//   }
// }
