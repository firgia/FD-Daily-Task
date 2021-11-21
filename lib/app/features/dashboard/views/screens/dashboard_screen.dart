library dashboard;

import 'package:daily_task/app/constans/app_constants.dart';
import 'package:daily_task/app/shared_components/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// model

// component

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 3,
            child: _buildSidebar(),
          ),
          Flexible(
            flex: 10,
            child: Container(),
          ),
          Flexible(
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Column(
      children: [
        UserProfile(
          data: controller.profil,
          onPressed: () {},
        ),
      ],
    );
  }
}
