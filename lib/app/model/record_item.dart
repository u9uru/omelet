import 'enum_record_type.dart';

class RecordItemField {
  static const type = 'type';
  static const content = 'content';
}

class RecordItem {
  RecordType type;
  String content;

  RecordItem({this.type = RecordType.Text, this.content = ''});

  RecordItem.fromMap(Map<String, Object> map)
      : this.type = recordType.valueOf(map[RecordItemField.type]),
        this.content = map[RecordItemField.content];

  Map<String, Object> toMap() {
    return {
      RecordItemField.type: type.name,
      RecordItemField.content: content,
    };
  }
}
