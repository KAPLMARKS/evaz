import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'personal_account.dart';

extension _PersonalAccountViewContext on BuildContext {
  PersonalAccountViewModel get viewModel => read();
}


class PersonalAccountView extends StatelessWidget {
  const PersonalAccountView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: context.viewModel.surname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Введите фамилию'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: context.viewModel.name,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Введите имя'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: context.viewModel.patr,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Введите отчество'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FilledButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              onPressed: context.viewModel.saveInfo,
              child: const Text('Сохранить'),
            ),
          ),
        ],
      ),
    );
  }
}
