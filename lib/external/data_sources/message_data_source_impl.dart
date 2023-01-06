import '../../infrastructure/data_sources/message_data_source.dart';
import '../../infrastructure/models/message_model.dart';

class MessageDataSourceImpl extends MessageDataSource {
  @override
  Future<MessageModel> changeMessage({required String messageText}) async {
    //Simulação de uma request
    final response = await Future.delayed(const Duration(seconds: 3)).then(
      (_) => {'messageText': messageText},
    );
    return MessageModel.fromJson(response);
  }
}
