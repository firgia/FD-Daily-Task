import 'package:daily_task/app/constans/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimpleSelectionButton extends StatefulWidget {
  const SimpleSelectionButton({
    this.initialSelected = 0,
    required this.data,
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final int initialSelected;
  final List<String> data;
  final Function(int index, String value) onSelected;

  @override
  State<SimpleSelectionButton> createState() => _SimpleSelectionButtonState();
}

class _SimpleSelectionButtonState extends State<SimpleSelectionButton> {
  late int selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.data.asMap().entries.map((e) {
        final index = e.key;
        final data = e.value;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: _Button(
            selected: selected == index,
            onPressed: () {
              widget.onSelected(index, data);
              setState(() {
                selected = index;
              });
            },
            data: data,
          ),
        );
      }).toList(),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    required this.selected,
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final bool selected;
  final String data;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 5,
          height: (selected) ? 30 : 0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Theme.of(context).primaryColor),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(10),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  _buildIcon(),
                  const SizedBox(width: kSpacing / 2),
                  Expanded(child: _buildLabel()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIcon() {
    return CircleAvatar(
      radius: 5,
      backgroundColor: (!selected)
          ? kFontColorPallets[2]
          : Theme.of(Get.context!).primaryColor,
    );
  }

  Widget _buildLabel() {
    return Text(
      data,
      style: TextStyle(
        color: (!selected)
            ? kFontColorPallets[1]
            : Theme.of(Get.context!).primaryColor,
        fontWeight: FontWeight.bold,
        letterSpacing: .8,
        fontSize: 13,
      ),
    );
  }
}
