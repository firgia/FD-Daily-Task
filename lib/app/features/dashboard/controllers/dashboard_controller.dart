part of dashboard;

class DashboardController extends GetxController {
  final UserProfileData dataProfil = const UserProfileData(
    image: AssetImage(ImageRasterPath.man),
    name: "Firgia D,",
    jobDesk: "Project Manager",
  );

  final TaskProgressData dataTask =
      const TaskProgressData(totalTask: 5, totalCompleted: 1);

  final weeklyTask = [
    ListTaskData(
      icon: const Icon(EvaIcons.monitor, color: Colors.blueGrey),
      label: "Slicing UI",
      jobDesk: "Programmer",
      assignTo: "Alex Ferguso",
      editDate: DateTime.now().add(-const Duration(hours: 2)),
    ),
    ListTaskData(
      icon: const Icon(EvaIcons.star, color: Colors.amber),
      label: "Personal branding",
      jobDesk: "Marketing",
      assignTo: "Justin Beck",
      editDate: DateTime.now().add(-const Duration(days: 50)),
    ),
    const ListTaskData(
      icon: Icon(EvaIcons.colorPalette, color: Colors.blue),
      label: "UI UX",
      jobDesk: "Design",
    ),
    const ListTaskData(
      icon: Icon(EvaIcons.pieChart, color: Colors.redAccent),
      label: "Determine meeting schedule",
      jobDesk: "System Analyst",
    ),
  ];

  final member = ["Budi Susanto", "Michael Greg"];

  void onPressedProfil() {}

  void onSelectedMenu(int index, SelectionButtonData value) {}

  void add() {}
}
