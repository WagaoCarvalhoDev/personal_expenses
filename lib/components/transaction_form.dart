import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  const TransactionForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueProductController = TextEditingController();
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
                    print(
                        '${titleController.text} + ${valueProductController
                            .text}');
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
