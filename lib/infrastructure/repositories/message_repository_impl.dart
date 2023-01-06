import '../../domain/entities/message_entity.dart';
import '../../domain/repositories/message_repository.dart';
import '../data_sources/message_data_source.dart';
import '../models/message_model.dart';

class MessageRepositoryImpl extends MessageRepository {
  final MessageDataSource _datasource;

  MessageRepositoryImpl(this._datasource);

  @override
  Future<MessageEntity> changeMessage({required String messageText}) async {
    try {
      MessageModel message = await _datasource.changeMessage(
        messageText: messageText,
      );
      return message.toEntity();
    } catch (error, stacktrace) {
      throw Exception('$error, $stacktrace');
    }
  }
}
