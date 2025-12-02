/// CampusStore Pro - Mobile Application
/// 
/// Aplikasi e-commerce untuk lingkungan kampus.
/// Dikembangkan oleh Tim Pengembang:
/// - Shatahaq (Lead Developer)
/// - Febiola Arn (Developer)
/// 
/// Versi: 1.0.0

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'utils/constants.dart';
import 'screens/auth/login_page.dart';

/// Entry point aplikasi
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Inisialisasi Firebase untuk backend services
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const CampusStoreApp());
}

class CampusStoreApp extends StatelessWidget {
  const CampusStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CampusStore Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: 'Inter',
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryColor,
          primary: primaryColor,
          secondary: secondaryColor,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
