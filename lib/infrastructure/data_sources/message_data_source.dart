import '../models/message_model.dart';

abstract class MessageDataSource {
  Future<MessageModel> changeMessage({required String messageText});
}
