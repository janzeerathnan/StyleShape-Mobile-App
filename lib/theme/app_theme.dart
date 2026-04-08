import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFFCC2222);
  static const Color primaryLight = Color(0xFFE8572A);
  static const Color dark = Color(0xFF1A1A1A);
  static const Color darkGrey = Color(0xFF333333);
  static const Color medGrey = Color(0xFF888888);
  static const Color lightGrey = Color(0xFFF2F2F2);
  static const Color white = Colors.white;
  static const Color bg = Color(0xFFF5F5F5);

  static ThemeData get theme => ThemeData(
    fontFamily: 'Poppins',
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: bg,
  );

  static BoxDecoration get cardDecoration => BoxDecoration(
    color: white,
    borderRadius: BorderRadius.circular(18),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: 0.07),
        blurRadius: 16,
        offset: const Offset(0, 4),
      ),
    ],
  );

  static InputDecoration inputDecoration(String hint) => InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(color: Color(0xFFBBBBBB), fontSize: 14),
    filled: true,
    fillColor: const Color(0xFFF0F0F0),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: primary, width: 1.5),
    ),
  );
}

class AppRoutes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const productListing = '/products';
  static const productDetail = '/product-detail';
  static const search = '/search';
  static const cart = '/cart';
  static const checkout = '/checkout';
  static const profile = '/profile';
  static const addresses = '/addresses';
  static const settings = '/settings';
  static const paymentMethods = '/payment-methods';
  static const personalInfo = '/personal-info';
  static const orders = '/orders';
  static const notifications = '/notifications';
}
