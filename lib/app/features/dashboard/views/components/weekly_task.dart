part of dashboard;

class _WeeklyTask extends StatelessWidget {
  const _WeeklyTask({
    required this.data,
    required this.onPressed,
    required this.onPressedAssign,
    required this.onPressedMember,
    Key? key,
  }) : super(key: key);

  final List<ListTaskData> data;
  final Function(int index, ListTaskData data) onPressed;
  final Function(int index, ListTaskData data) onPressedAssign;
  final Function(int index, ListTaskData data) onPressedMember;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: data
          .asMap()
          .entries
          .map(
            (e) => ListTask(
              data: e.value,
              onPressed: () => onPressed(e.key, e.value),
              onPressedAssign: () => onPressedAssign(e.key, e.value),
              onPressedMember: () => onPressedMember(e.key, e.value),
            ),
          )
          .toList(),
    );
  }
}
