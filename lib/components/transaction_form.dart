import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  TransactionForm({super.key, required this.onSubmit});

  final Function(String, double) onSubmit;

  final titleController = TextEditingController();
  final valueProductController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Título'),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
              controller: valueProductController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    final title = titleController.text;
                    final value =
                        double.tryParse(valueProductController.text) ?? 0.0;
                    onSubmit(title, value);
                  },
                  child: const Text('Nova transação',
                      style: TextStyle(
                        color: Colors.purple,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
