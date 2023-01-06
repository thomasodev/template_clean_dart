class MessageEntity {
  final String text;

  MessageEntity({
    this.text = 'Hello World',
  });

  MessageEntity copyWith({String? text}) =>
      MessageEntity(text: text ?? this.text);

  @override
  String toString() => 'PersonEntity(text: $text)';

  bool isEmpty() => text.isEmpty;
}
