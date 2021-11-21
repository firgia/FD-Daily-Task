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
