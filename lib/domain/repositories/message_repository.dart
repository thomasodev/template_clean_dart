import '../entities/message_entity.dart';

abstract class MessageRepository {
  Future<MessageEntity> changeMessage({required String messageText});
}
