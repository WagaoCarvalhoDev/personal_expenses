import 'package:flutter/material.dart';
import 'package:personal_expenses/components/adaptive_buton.dart';
import 'package:personal_expenses/components/adaptive_date_picker.dart';
import 'package:personal_expenses/components/adaptive_text_field.dart';

class TransactionForm extends StatefulWidget {
  const TransactionForm({super.key, required this.onSubmit});

  final Function(String, double, DateTime) onSubmit;

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final _titleController = TextEditingController();
  final _valueProductController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  _submitForm() {
    final title = _titleController.text;
    final value = double.tryParse(_valueProductController.text) ?? 0.0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    widget.onSubmit(title, value, _selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AdaptiveTextField(
              autofocus: true,
              controller: _titleController,
              label: 'Título',
              onSubmitted: (_) => _submitForm(),
            ),
            AdaptiveTextField(
              autofocus: false,
              controller: _valueProductController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              label: 'Valor (R\$)',
              onSubmitted: (_) => _submitForm(),
            ),
            AdaptiveDatePicker(
              selectedDate: _selectedDate,
              onDateChange: (newDate) {
                setState(() {
                  _selectedDate = newDate;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AdaptiveButton(
                  onPressed: _submitForm,
                  label: 'Nova transação',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
