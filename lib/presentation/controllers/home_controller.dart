import 'package:flutter/material.dart';

import '../../domain/entities/message_entity.dart';
import '../../domain/use_cases/change_message.dart';

class HomeController {
  final ChangeMessage _useCase;

  HomeController(this._useCase);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  final TextEditingController textController = TextEditingController();

  MessageEntity message = MessageEntity(text: 'Hello World');

  void setLoadingStatus({required bool isLoading}) => _isLoading = isLoading;

  Future<void> changeMessage() async {
    message = await _useCase.call(messageText: textController.text);
  }
}
