import 'package:personal_expenses/models/transaction.dart';

class TransactionsData {
  static final transactions = <Transaction>[
    Transaction(
      id: 't0',
      title: 'Conta de luz',
      value: 150.70,
      date: DateTime.now().subtract(const Duration(days: 33)),
    ),
    Transaction(
      id: 't1',
      title: 'Tênis',
      value: 310.76,
      date: DateTime.now().subtract(const Duration(days: 3)),
    ),
    Transaction(
      id: 't2',
      title: 'Camisa',
      value: 110.57,
      date: DateTime.now().subtract(const Duration(days: 4)),
    ),
    Transaction(
      id: 't3',
      title: 'Cartão de crédito',
      value: 110211.57,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't4',
      title: 'Cinto',
      value: 11.57,
      date: DateTime.now(),
    ),
  ];
}
