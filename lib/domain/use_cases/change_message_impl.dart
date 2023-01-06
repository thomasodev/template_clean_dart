import '../entities/message_entity.dart';
import '../repositories/message_repository.dart';
import 'change_message.dart';

class ChangeMessageImpl extends ChangeMessage {
  final MessageRepository _repository;

  ChangeMessageImpl(this._repository);

  @override
  Future<MessageEntity> call({required String messageText}) {
    return _repository.changeMessage(messageText: messageText);
  }
}
