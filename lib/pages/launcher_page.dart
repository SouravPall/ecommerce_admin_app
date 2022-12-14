import 'package:ecommerce_admin_app/auth/auth_service.dart';
import 'package:ecommerce_admin_app/pages/dashboard_page.dart';
import 'package:ecommerce_admin_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class LauncherPage extends StatefulWidget {
  static const routeName = '/launcher-page';
  const LauncherPage({Key? key}) : super(key: key);

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      if(AuthService.user == null){
        Navigator.pushReplacementNamed(context, LoginPage.routeName);
      }
      else{
        Navigator.pushReplacementNamed(context, DashboardPage.routeName);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
