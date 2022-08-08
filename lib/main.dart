import 'package:ecommerce_admin_app/pages/category_page.dart';
import 'package:ecommerce_admin_app/pages/dashboard_page.dart';
import 'package:ecommerce_admin_app/pages/launcher_page.dart';
import 'package:ecommerce_admin_app/pages/login_page.dart';
import 'package:ecommerce_admin_app/pages/new_product_page.dart';
import 'package:ecommerce_admin_app/pages/order_page.dart';
import 'package:ecommerce_admin_app/pages/product_page.dart';
import 'package:ecommerce_admin_app/pages/report_page.dart';
import 'package:ecommerce_admin_app/pages/settings_page.dart';
import 'package:ecommerce_admin_app/pages/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-com Admin Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName: (_) => LauncherPage(),
        LoginPage.routeName: (_) => LoginPage(),
        DashboardPage.routeName: (_) => DashboardPage(),
        ProductPage.routeName: (_) => ProductPage(),
        CategoryPage.routeName: (_) => CategoryPage(),
        OrderPage.routeName: (_) => OrderPage(),
        UserPage.routeName: (_) => UserPage(),
        ReportPage.routeName: (_) => ReportPage(),
        SettingsPage.routeName: (_) => SettingsPage(),
        NewProductPage.routeName: (_) => SettingsPage(),
      },
    );
  }
}
