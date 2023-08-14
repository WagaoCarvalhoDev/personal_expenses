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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(transactions: transactions),
        const TransactionForm(),
      ],
    );
  }
}
