import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'theme/app_theme.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/product_listing_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/main_screen.dart';
import 'screens/addresses_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/payment_methods_screen.dart';
import 'screens/personal_info_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/checkout_screen.dart';
import 'models/product.dart';
import 'screens/notification_screen.dart';

import 'package:provider/provider.dart';
import 'providers/cart_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CartProvider>(create: (_) => CartProvider()),
      ],
      child: const StyleSnapApp(),
    ),
  );
}

class StyleSnapApp extends StatelessWidget {
  const StyleSnapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StyleSnap',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      initialRoute: AppRoutes.login,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case AppRoutes.login:
            return _fade(const LoginScreen());
          case AppRoutes.register:
            return _slide(const RegisterScreen(), fromRight: false);
          case AppRoutes.home:
            return _fade(const MainScreen());
          case AppRoutes.search:
            return _fade(const MainScreen(initialIndex: 1));
          case AppRoutes.cart:
            return _fade(const MainScreen(initialIndex: 2));
          case AppRoutes.profile:
            return _fade(const MainScreen(initialIndex: 3));
          case AppRoutes.productListing:
            return _slide(const ProductListingScreen());
          case AppRoutes.productDetail:
            final product = settings.arguments as Product;
            return _slide(ProductDetailScreen(product: product));
          case AppRoutes.addresses:
            return _slide(const AddressesScreen());
          case AppRoutes.settings:
            return _slide(const SettingsScreen());
          case AppRoutes.paymentMethods:
            return _slide(const PaymentMethodsScreen());
          case AppRoutes.personalInfo:
            return _slide(const PersonalInfoScreen());
          case AppRoutes.orders:
            return _slide(const OrdersScreen());
          case AppRoutes.checkout:
            return _slide(const CheckoutScreen());
          case AppRoutes.notifications:
            return _slide(const NotificationScreen());
          default:
            return _fade(const MainScreen());
        }
      },
    );
  }

  PageRouteBuilder _fade(Widget page) => PageRouteBuilder(
    pageBuilder: (_, anim, child) => page,
    transitionsBuilder: (_, anim, _, child) =>
        FadeTransition(opacity: anim, child: child),
    transitionDuration: const Duration(milliseconds: 350),
  );

  PageRouteBuilder _slide(Widget page, {bool fromRight = true}) =>
      PageRouteBuilder(
        pageBuilder: (_, anim, child) => page,
        transitionsBuilder: (_, anim, _, child) => SlideTransition(
          position: Tween<Offset>(
            begin: Offset(fromRight ? 1.0 : -1.0, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: anim, curve: Curves.easeOutCubic)),
          child: child,
        ),
        transitionDuration: const Duration(milliseconds: 380),
      );
}
