import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/data/transactions_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text('Despesas pessoais'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Card(
                color: Theme
                    .of(context)
                    .colorScheme
                    .inversePrimary,
                elevation: 5,
                child: const Center(child: Text('Gráfico')),
              ),
            ),
            Column(
              children: [
                ...TransactionsData.transactions.map(
                      (t) {
                    return Card(
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'R\$ ${t.value.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                DateFormat('d MMM y').format(t.date),
                                style: const TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ).toList()
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(labelText: 'Título'),
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Valor (R\$)'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Text('Nova transação',
                                style: TextStyle(color: Colors.purple,)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
