part of dashboard;

class DashboardController extends GetxController {
  final UserProfileData dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "Firgia D,",
    jobDesk: "Project Manager",
  );

  final member = ["Budi Susanto", "Michael Greg"];

  void onPressedProfil() {}

  void onSelectedMenu(int index, SelectionButtonData value) {}

  void add() {}
}
