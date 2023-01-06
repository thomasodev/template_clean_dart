import '../entities/message_entity.dart';

abstract class ChangeMessage {
  Future<MessageEntity> call({required String messageText});
}
