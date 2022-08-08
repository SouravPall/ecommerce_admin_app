import 'package:ecommerce_admin_app/models/dashboard_item_model.dart';
import 'package:ecommerce_admin_app/widgets/dashboard_item_view.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  static const routeName = '/dashboard-page';
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
          ),
          itemCount: dashboardItems.length,
          itemBuilder: (context, index) => DashboardItemView(
              item: dashboardItems[index],
              onPressed: (value) {}
          ),
      ),
    );
  }
}
