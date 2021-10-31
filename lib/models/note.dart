class Note {
  String id;
  String type;
  String title;
  String description;
  String color;
  bool isPinned;
  List<String> images;
  List<String> paints;
  List<String> audios;
  List<CheckBox> checkboxList;

  Note({
    required this.id,
    required this.type,
    this.title = '',
    this.description = '',
    this.color = '#FFFFFF',
    this.isPinned = false,
    this.images = const [],
    this.paints = const [],
    this.audios = const [],
    this.checkboxList = const [],
  });
}

class CheckBox {
  String text;
  bool isCompleted;

  CheckBox({required this.text, required this.isCompleted});
}
