part of dashboard;

class _TaskGroup extends StatelessWidget {
  const _TaskGroup({
    required this.title,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String title;
  final List<ListTaskDateData> data;
  final Function(int index, ListTaskDateData data) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          const SizedBox(height: kSpacing / 2),
          ...data
              .asMap()
              .entries
              .map((e) => ListTaskDate(
                    data: e.value,
                    onPressed: () {},
                    dividerColor: _getSequenceColor(e.key),
                  ))
              .toList()
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(
        color: kFontColorPallets[2],
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Color _getSequenceColor(int index) {
    int val = index % 3;

    if (val == 2) {
      return Colors.lightBlue;
    } else if (val == 1) {
      return Colors.amber;
    } else {
      return Colors.redAccent;
    }
  }
}
