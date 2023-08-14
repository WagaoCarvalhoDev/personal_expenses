import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_expenses/components/transaction_form.dart';
import 'package:personal_expenses/components/transactions_list.dart';
import 'package:personal_expenses/data/transactions_data.dart';
import 'package:personal_expenses/models/transaction.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final titleController = TextEditingController();
  final valueProductController = TextEditingController();
  final List<Transaction> transactions = TransactionsData.transactions;

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(transactions: transactions),
        TransactionForm(onSubmit: _addTransaction),
      ],
    );
  }
}
