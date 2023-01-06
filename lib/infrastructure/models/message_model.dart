import '../../domain/entities/message_entity.dart';

class MessageModel {
  final String text;

  MessageModel({required this.text});

  factory MessageModel.fromEntity(MessageEntity messageEntity) {
    return MessageModel(
      text: messageEntity.text,
    );
  }

  MessageEntity toEntity() => MessageEntity(text: text);

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(text: json['messageText']);
  }

  Map<String, dynamic> toJson() {
    return {
      'messageText': text,
    };
  }
}
