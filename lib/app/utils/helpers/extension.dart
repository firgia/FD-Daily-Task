part of app_helpers;

extension StringExtension on String {
  String getInitialName([int max = 2]) {
    String val = this;

    List<String> explode = val.split(" ");
    explode.removeWhere((element) => element.trim().isEmpty);

    String result = "";

    for (int i = 0; i < max; i++) {
      if (i < explode.length) {
        result += explode[i].split("").first;
      } else {
        break;
      }
    }

    return result;
  }
}

extension DateTimeExtension on DateTime {
  String formatdMMMMY() {
    return DateFormat('d MMMM y').format(this);
  }

  String dueDate() {
    DateTime due = this;
    Duration diff = due.difference(DateTime.now());

    if (diff.inDays > 1) {
      return "${diff.inDays} Days";
    } else if (diff.inHours > 1) {
      return "${diff.inHours} Hours";
    } else if (diff.inMinutes > 1) {
      return "${diff.inMinutes} Minutes";
    } else if (diff.inSeconds > 1) {
      return "${diff.inSeconds} Seconds";
    } else {
      return "Is Overdue";
    }
  }
}
