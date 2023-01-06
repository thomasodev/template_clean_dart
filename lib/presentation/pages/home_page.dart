import 'package:flutter/material.dart';

import '../../domain/use_cases/change_message_impl.dart';
import '../../external/data_sources/message_data_source_impl.dart';
import '../../infrastructure/repositories/message_repository_impl.dart';
import '../../shared/components/loader.dart';
import '../../shared/utils/string_utils.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  static const screenName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController(
    ChangeMessageImpl(
      MessageRepositoryImpl(
        MessageDataSourceImpl(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Template Clean Dart'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller.textController,
                    decoration: const InputDecoration(
                      label: Text('Envie uma mensagem:'),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () async {
                    setState(
                      () => controller.setLoadingStatus(isLoading: true),
                    );
                    await controller.changeMessage();
                    setState(
                      () => controller.setLoadingStatus(isLoading: false),
                    );
                  },
                  child: const Text('Enviar'),
                ),
              ],
            ),
          ),
          controller.isLoading
              ? const Loader()
              : controller.message.isEmpty()
                  ? const Text('Nenhuma mensagem enviada')
                  : Column(
                      children: [
                        Text(controller.message.text.capitalize()),
                        const SizedBox(height: 8),
                        Text(controller.message.toString()),
                      ],
                    ),
        ],
      ),
    );
  }
}
