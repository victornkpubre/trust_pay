
class FullscreenSelectIntentArgument {
  final List<String> values;
  final String? selectedValue;
  FullscreenSelectIntentArgument(this.values, this.selectedValue);
}

class TextInputIntentArgument {
  final String value;
  final String title;
  String? leading;
  String? trailing;
  TextInputIntentArgument(this.value, this.title);
}