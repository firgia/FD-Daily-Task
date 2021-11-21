part of dashboard;

class _AddButton extends StatelessWidget {
  const _AddButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      mini: true,
      child: const Icon(Icons.add),
      tooltip: "add",
    );
  }
}
