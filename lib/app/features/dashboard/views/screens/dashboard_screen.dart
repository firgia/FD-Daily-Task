library dashboard;

import 'package:daily_task/app/constans/app_constants.dart';
import 'package:daily_task/app/shared_components/selection_button.dart';
import 'package:daily_task/app/shared_components/user_profile.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: UserProfile(
            data: controller.dataProfil,
            onPressed: controller.onPressedProfil,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SelectionButton(
            data: [
              SelectionButtonData(
                activeIcon: EvaIcons.home,
                icon: EvaIcons.homeOutline,
                label: "Home",
              ),
              SelectionButtonData(
                activeIcon: EvaIcons.calendar,
                icon: EvaIcons.calendarOutline,
                label: "Calendar",
              ),
              SelectionButtonData(
                activeIcon: EvaIcons.checkmarkCircle2,
                icon: EvaIcons.checkmarkCircle2Outline,
                label: "Task",
                totalNotif: 20,
              ),
            ],
            onSelected: controller.onSelectedMenu,
          ),
        ),
        const Divider(
          indent: 20,
          thickness: 1,
          endIndent: 20,
          height: 60,
        ),
      ],
    );
  }
}
