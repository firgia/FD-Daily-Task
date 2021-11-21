part of dashboard;

class _Team extends StatelessWidget {
  const _Team({
    required this.people,
    Key? key,
  }) : super(key: key);

  final List<String> people;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Team",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kFontColorPallets[1],
          ),
        ),
        SimpleUserProfile(
          name: "Justin",
          onPressed: () {},
          color: Colors.green,
        ),
        SimpleUserProfile(
          name: "Justin",
          onPressed: () {},
          color: Colors.green,
        ),
      ],
    );
  }
}
