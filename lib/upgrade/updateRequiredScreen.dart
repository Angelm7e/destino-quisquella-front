// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class UpdateRequiredScreen extends StatefulWidget {
//   const UpdateRequiredScreen({super.key});

//   static const String routeName = '/UpdateRequiredScreen';

//   @override
//   State<UpdateRequiredScreen> createState() => _UpdateRequiredScreenState();
// }

// class _UpdateRequiredScreenState extends State<UpdateRequiredScreen> {
//   bool _isLoading = false;
//   String androidLink =
//           "https://play.google.com/store/apps/details?id=com.atl.app",
//       iosLink = "https://apps.apple.com/us/app/atlantica-app/id6799171239";

//   Future<void> _openAppStore(String url) async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       if (Platform.isAndroid || Platform.isIOS) {
//         await launchUrl(
//           Uri.parse(url),
//           mode: LaunchMode.externalApplication,
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Plataforma no soportada'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Error al abrir la tienda de aplicaciones'),
//           backgroundColor: Colors.red,
//         ),
//       );
//     } finally {
//       setState(() {
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final result =
//         ModalRoute.of(context)?.settings.arguments as VersionCheckResponse;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Column(
//               children: [
//                 // Icono principal
//                 Container(
//                   width: 120,
//                   height: 120,
//                   decoration: BoxDecoration(
//                     color: Colors.orange.shade50,
//                     borderRadius: BorderRadius.circular(60),
//                     border: Border.all(color: Colors.orange.shade200, width: 2),
//                   ),
//                   child: Icon(
//                     Icons.system_update,
//                     size: 60,
//                     color: Colors.orange.shade600,
//                   ),
//                 ),

//                 const SizedBox(height: 32),

//                 Text(
//                   'Actualización Requerida',
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.grey.shade800,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),

//                 const SizedBox(height: 16),

//                 Text(
//                   'Hay una nueva versión disponible en las tiendas. Por favor, actualiza la aplicación para continuar disfrutando de todas las funcionalidades',
//                   style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.grey.shade600,
//                     height: 1.4,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),

//                 const SizedBox(height: 40),

//                 _buildBenefitsList(),

//                 Column(
//                   children: [
//                     AtlButton(
//                       width: double.infinity,
//                       text:
//                           _isLoading ? 'Abriendo tienda...' : 'Ir a la tienda',
//                       isPrimary: true,
//                       onPressed: _isLoading
//                           ? () {}
//                           : () {
//                               if (result.data!.updateUrl != null) {
//                                 _openAppStore(result.data!.updateUrl!);
//                               } else {
//                                 final url =
//                                     Platform.isAndroid ? androidLink : iosLink;
//                                 _openAppStore(url);
//                               }
//                             },
//                     ),
//                     result.data?.mandatoryUpdate == true
//                         ? Text(
//                             'Después de actualizar, podrás continuar usando la aplicación normalmente',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade500,
//                             ),
//                             textAlign: TextAlign.center,
//                           )
//                         : Padding(
//                             padding: const EdgeInsets.only(top: 12.0),
//                             child: AtlButton(
//                               width: double.infinity,
//                               text: 'Recordarme más tarde',
//                               isPrimary: false,
//                               onPressed: () {
//                                 Navigator.pushNamed(
//                                     context, LoginScreen.routeName);
//                               },
//                             ),
//                           ),
//                   ],
//                 ),

//                 const SizedBox(height: 20),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildBenefitsList() {
//     final benefits = [
//       {
//         'icon': Icons.bug_report,
//         'title': 'Mejoras integradas',
//         'description': 'Mejoras en la estabilidad de la aplicación',
//       },
//       {
//         'icon': Icons.star,
//         'title': 'Nuevas funcionalidades',
//         'description': 'Disfruta de las últimas mejoras y características',
//       },
//       {
//         'icon': Icons.security,
//         'title': 'Mayor seguridad',
//         'description': 'Protección mejorada para tus datos',
//       },
//     ];

//     return Column(
//       children: benefits
//           .map((benefit) => Padding(
//                 padding: const EdgeInsets.only(bottom: 20),
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 50,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.blue.shade50,
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: Icon(
//                         benefit['icon'] as IconData,
//                         color: Colors.blue.shade600,
//                         size: 24,
//                       ),
//                     ),
//                     const SizedBox(width: 16),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             benefit['title'] as String,
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey.shade800,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             benefit['description'] as String,
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey.shade600,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ))
//           .toList(),
//     );
//   }
// }
